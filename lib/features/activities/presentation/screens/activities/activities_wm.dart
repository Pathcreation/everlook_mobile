import 'package:elementary/elementary.dart';
import 'package:enum_assist_annotation/enum_assist_annotation.dart';
import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/activities/di/activities_scope.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_model.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_screen.dart';
import 'package:provider/provider.dart';

@EnumAssist()
enum ActivityState {
  priceActivities,
  activities,
  emergency,
  terms;

  T map<T>({
    required T Function() priceActivities,
    required T Function() activities,
    required T Function() emergency,
    required T Function() terms,
  }) {
    switch (this) {
      case ActivityState.priceActivities:
        return priceActivities();
      case ActivityState.activities:
        return activities();
      case ActivityState.emergency:
        return emergency();
      case ActivityState.terms:
        return terms();
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? priceActivities,
    T Function()? activities,
    T Function()? emergency,
    T Function()? terms,
  }) =>
      map<T>(
        priceActivities: priceActivities ?? orElse,
        activities: activities ?? orElse,
        emergency: emergency ?? orElse,
        terms: terms ?? orElse,
      );
}

/// DI factory for [ActivitiesWM].
ActivitiesWM defaultActivitiesWMFactory(BuildContext context) {
  final scope = context.read<IAppScope>();

  return ActivitiesWM(ActivitiesModel(appScope: scope));
}

/// Interface for [ActivitiesWM].
abstract interface class IActivitiesWM with ThemeIModelMixin implements IWidgetModel {
  UnionStateNotifier<List<ActivityEntity>> get activities;

  UnionStateNotifier<ActivityState> get activityState;

  UnionStateNotifier<bool> get acceptedTerms;

  UnionStateNotifier<bool> get state;

  List<ItemModel> get measuringList;

  String get terms;

  UserModel? get user;

  void expandActivity({
    required int index,
    required int parent,
  });

  void onActive({
    required int index,
    required ActivityEntity activity,
  });

  // void expandEmergencyActivity({
  //   required int index,
  //   required int parent,
  // });

  void onActiveEmergency({
    required int index,
    required ActivityEntity activity,
  });

  void getActivities(int parent);

  void changeActivityState(ActivityState state);

  void onMeasure({
    required int index,
    required ActivityEntity activity,
    required Units? value,
  });

  void acceptTermsOfEmergency();

  void save();
}

/// {@template activities_wm.class}
/// [WidgetModel] for [ActivitiesScreen].
/// {@endtemplate}
final class ActivitiesWM extends WidgetModel<ActivitiesScreen, ActivitiesModel> with ThemeWMMixin implements IActivitiesWM {
  /// {@macro activities_wm.class}
  ActivitiesWM(super._model);

  @override
  void initWidgetModel() {
    measuringList = model.measuringList;
    super.initWidgetModel();
  }

  @override
  UnionStateNotifier<List<ActivityEntity>> get activities => model.activities;

  @override
  List<ItemModel> measuringList = [];

  @override
  void expandActivity({
    required int index,
    required int parent,
  }) async {
    model.expandActivity(
      index: index,
      parent: parent,
    );
  }

  @override
  void getActivities(int parent) {
    model.getActivities(parent: parent);
  }

  @override
  void onActive({
    required int index,
    required ActivityEntity activity,
  }) {
    model.onActive(
      index: index,
      activity: activity,
    );
  }

  @override
  void onMeasure({
    required int index,
    required ActivityEntity activity,
    required Units? value,
  }) {
    model.onMeasure(
      index: index,
      activity: activity,
      value: value,
    );
  }

  @override
  UnionStateNotifier<ActivityState> get activityState => model.activityState;

  @override
  void changeActivityState(ActivityState state) {
    model.changeActivityState(state);
  }

  @override
  UnionStateNotifier<bool> get acceptedTerms => model.acceptedTerms;

  @override
  void acceptTermsOfEmergency() {
    model.acceptTermsOfEmergency();
  }

  @override
  void onActiveEmergency({
    required int index,
    required ActivityEntity activity,
  }) {
    model.onActiveEmergency(
      index: index,
      activity: activity,
    );
  }

  @override
  void save() {
    model.save();
  }

  @override
  String get terms => model.terms;

  @override
  UserModel? get user => model.user;

  @override
  UnionStateNotifier<bool> get state => model.state;
}
