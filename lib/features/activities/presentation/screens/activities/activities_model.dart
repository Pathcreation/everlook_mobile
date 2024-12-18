import 'package:everlook_mobile/core/architecture/domain/entity/result.dart';
import 'package:everlook_mobile/core/architecture/presentation/base_model.dart';
import 'package:everlook_mobile/features/activities/data/converters/activity_converter.dart';
import 'package:everlook_mobile/features/activities/data/repositories/activities_repository.dart';
import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/features/activities/domain/repositories/i_activities_repository.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_screen.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'activities_wm.dart';

/// {@template activities_model.class}
/// [ElementaryModel] for [ActivitiesScreen].
/// {@endtemplate}
final class ActivitiesModel extends BaseModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final IActivitiesRepository _activitiesRepository;

  List<ItemModel> measuringList = [];
  List<ActivityEntity> userActivities = [];
  String terms = '';
  UserModel? user;

  final _state = UnionStateNotifier<bool>.new(true);
  final _activities = UnionStateNotifier<List<ActivityEntity>>.new([]);

  final _activityState = UnionStateNotifier<ActivityState>.new(ActivityState.priceActivities);

  final _acceptedTerms = UnionStateNotifier<bool>.new(false);

  UnionStateNotifier<List<ActivityEntity>> get activities => _activities;

  UnionStateNotifier<bool> get acceptedTerms => _acceptedTerms;

  UnionStateNotifier<bool> get state => _state;

  UnionStateNotifier<ActivityState> get activityState => _activityState;

  /// {@macro activities_model.class}
  ActivitiesModel({
    required IAppScope appScope,
  })  : _appScope = appScope,
        _activitiesRepository = ActivitiesRepository(
          jobsRepository: appScope.jobsRepository,
          profileRepository: appScope.profileRepository,
          activitiesEntityConverter: const ActivityEntityConverter(),
          addActivityModelConverter: const AddActivityModelConverter(),
          updateActivityModelConverter: const UpdateActivityModelConverter(),
        ),
        measuringList = appScope.profileRepository.measuringList;

  @override
  void init() async {
    _state.loading();
    await getActivities().then((_) async {
      _activities.content(_activitiesRepository.activities);
      await getUserActivities().then((_) async {
        _appScope.commonRepository.getTermEmergency().then((value) {
          terms = value != null ? value.replaceAll('"', '') : '';
          _acceptedTerms.content(_appScope.profileRepository.currentUser?.emergencyResponse ?? false);
          _state.content(false);
        });
      });
    });

    super.init();
  }

  @override
  void dispose() {
    _activities.dispose();
    _activityState.dispose();
    _acceptedTerms.dispose();
  }

  Future<List<ActivityEntity>> getActivities({
    int? parent,
  }) async {
    // _activities.loading(_activities.value.data);
    final result = await makeCall(() => _activitiesRepository.getActivities(
          parent: parent,
        ));
    if (result case ResultOk(:final data)) {
      _activities.content(data);
    }
    return _activities.value.data ?? [];
  }

  Future<void> getUserActivities() async {
    int activeCount = 0;

    final result = await makeCall(_activitiesRepository.getUserActivities);
    if (result case ResultOk(:final data)) {
      userActivities = data;
      List<ActivityEntity> list = [];
      list.addAll(_activities.value.data ?? []);
      for (int j = 0; j < list.length; j++) {
        list[j].children = [];
        for (var userActivity in userActivities) {
          // print('GET_USER_ACTIVITIES: CHILD_ID: ${list[j].id} == MY_ID: ${userActivity.parent} = ${list[j].id == userActivity.parent ? 'TRUE' : ''}');
          if (list[j].id == userActivity.parent) {
            activeCount = activeCount + 1;
            list[j].children!.add(userActivity);
          }
        }
        list[j].activeCount = activeCount;
        activeCount = 0;
      }
      _activities.content(list);
    }
  }

  void expandActivity({
    required int index,
    required int parent,
  }) async {
    List<ActivityEntity>? list = [];
    if (activities.value.data != null && activities.value.data!.isNotEmpty) {
      list.addAll(activities.value.data!);
      final item = list[index];
      int activeCount = 0;
      item.isExpanded = !item.isExpanded;
      if (item.isExpanded) {
        item.children = await getActivities(parent: parent);
        if (item.children != null) {
          if (userActivities.isNotEmpty) {
            for (var inputItem in userActivities) {
              for (int i = 0; i < item.children!.length; i++) {
                var child = item.children![i];
                // print('EXPAND_ACTIVITY: CHILD_ID: ${child.id} == MY_ID: ${inputItem.structureId} = ${child.id == inputItem.structureId ? 'TRUE' : ''}');
                if (child.id == inputItem.structureId) {
                  /// Меняем количество активных детей
                  child = inputItem;
                  item.children![i] = child;
                  activeCount = activeCount + 1;
                }
              }
              list[index] = item;
              list[index].activeCount = activeCount;
            }
          } else {
            list[index] = item;
          }
        }
        _activities.content(list);
      }
    }
    _activities.content(list);
  }

  void onActive({
    required int index,
    required ActivityEntity activity,
  }) {
    List<ActivityEntity>? list = [];
    List<ActivityEntity>? children = [];
    if (activities.value.data != null && activities.value.data!.isNotEmpty) {
      list.addAll(activities.value.data!);

      /// Получаем элемент верхнего уровня
      final item = list[index];

      /// Получение списка детей из элемента верхнего уровня
      children.addAll(item.children!);

      activity.isActive = !activity.isActive;
      final idx = children.indexWhere((e) => e.id == activity.id);
      children[idx] = activity;
      List<ActivityEntity> newChildren = [activity];

      /// Изменяем список детей для списка Emergency
      item.children?.clear();
      item.children?.addAll(newChildren);
      List<ActivityEntity> priceActivities = [];
      List<ActivityEntity> emergencyActivities = [];
      if (activity.isActive) {
        priceActivities.add(activity);
        emergencyActivities.add(item);
      } else {
        priceActivities.remove(activity);
        emergencyActivities.remove(item);
      }

      /// Восстанавливаем список детей для списка активностей
      item.children = children;

      /// Меняем количество активных детей
      int activeCount = 0;
      for (var value in children) {
        if (value.isActive) {
          activeCount = activeCount + 1;
        }
      }
      item.activeCount = activeCount;
      list[index] = item;
      _activities.content(list);
    }
  }

  void onActiveEmergency({
    required int index,
    required ActivityEntity activity,
  }) {
    List<ActivityEntity>? list = [];
    List<ActivityEntity>? children = [];
    _activities.loading(_activities.value.data);
    if (_activities.value.data != null && _activities.value.data!.isNotEmpty) {
      list.addAll(_activities.value.data!);

      /// Получаем элемент верхнего уровня
      final item = list[index];

      /// Получение списка детей из элемента верхнего уровня
      children.addAll(item.children!);
      activity.isEmergency = !activity.isEmergency;
      final idx = children.indexWhere((e) => e.id == activity.id);
      children[idx] = activity;
      item.children = children;
      list[index] = item;
      _activities.content(list);
    }
  }

  void onMeasure({
    required int index,
    required ActivityEntity activity,
    required Units? value,
  }) async {
    List<ActivityEntity>? list = [];
    if (activities.value.data != null && activities.value.data!.isNotEmpty) {
      list.addAll(activities.value.data!);
      if (list[index].children != null) {
        final idx = list[index].children!.indexWhere((e) => e.id == activity.id);
        activity.units = value;
        list[index].children![idx] = activity;
      }
      _activities.content(list);
    }
  }

  void changeActivityState(ActivityState state) {
    _activityState.content(state);
  }

  void acceptTermsOfEmergency() async {
    if (_appScope.profileRepository.currentUser != null) {
      await _appScope.profileRepository
          .updateUser(
        _appScope.profileRepository.currentUser!.copyWith(
          emergencyResponse: !(acceptedTerms.value.data ?? false),
        ),
      )
          .then((value) {
        _acceptedTerms.content(value?.emergencyResponse ?? false);
      });
    }
  }

  void save() async {
    _state.loading();
    if (activities.value.data != null && activities.value.data!.isNotEmpty) {
      final list = activities.value.data!;
      List<ActivityEntity> activeActivities = [];
      List<ActivityEntity> newActivities = [];
      List<int> structureIdsTemp = [];
      structureIdsTemp = userActivities.map((e) => e.structureId!).toList();
      for (var item in list) {
        if (item.children != null) {
          for (var child in item.children!) {
            if (child.isActive) {
              if (userActivities.isNotEmpty) {
                List<int> ids = userActivities.map((e) => e.id!).toList();
                if (ids.contains(child.id)) {
                  structureIdsTemp.remove(child.structureId);
                  activeActivities.add(child);
                } else {
                  newActivities.add(child);
                }
              } else {
                newActivities.add(child);
              }
            }
          }
        }
      }
      if (activeActivities.isNotEmpty) {
        final result = await _activitiesRepository.updateActivities(activities: activeActivities);
        switch (result) {
          case ResultOk(:final data):
            _state.loading(data);
          case ResultFailed(:final failure):
            _state.failure(failure);
        }
      }
      if (newActivities.isNotEmpty) {
        final result = await _activitiesRepository.addActivities(activities: newActivities);
        switch (result) {
          case ResultOk(:final data):
            _state.loading(data);
          case ResultFailed(:final failure):
            _state.failure(failure);
        }
      }
      if (structureIdsTemp.isNotEmpty) {
        for (var id in structureIdsTemp) {
          final result = await _activitiesRepository.deleteActivity(id: id);
          switch (result) {
            case ResultOk(:final data):
              _state.loading(data);
            case ResultFailed(:final failure):
              _state.failure(failure);
          }
        }
      }
      await getUserActivities().then((_) {
        _state.content(false);
      });
    }
  }
}
