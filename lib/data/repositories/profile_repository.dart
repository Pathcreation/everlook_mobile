import 'package:everlook_mobile/core/architecture/domain/entity/failure.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/request_operation.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/result.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:rxdart/subjects.dart';

class ProfileRepository implements IProfileRepository {
  final ProfileService _service;
  final TokenStorageImpl _tokenStorage;

  @override
  UserModel? currentUser;

  @override
  final currentUserStream = BehaviorSubject<UserModel?>.seeded(null);

  ProfileRepository({
    required TokenStorageImpl tokenStorage,
    required ProfileService service,
  })  : _service = service,
        _tokenStorage = tokenStorage;

  @override
  RequestOperation<bool> login({
    required String email,
    required String password,
    String? name,
  }) async {
    try {
      final result = await _service.login(
        email: email,
        password: password,
        name: name,
      );
      if (result != null) {
        await _tokenStorage.write(result);
      }
      return Result.ok(result != null);
    } on DioException catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
      // ignore: avoid-identical-exception-handling-blocks
    } on Object catch (error, s) {
      return Result.failed(Failure(original: error, trace: s));
    }
  }

  @override
  Future<UserModel?> getCurrentUser() async {
    final response = await _service.getCurrentUser();
    if (response != null) {
      currentUser = response;
      currentUserStream.add(response);
    }
    return currentUser;
  }

  @override
  Future<bool> logout() async {
    bool result = false;
    final tokens = await _tokenStorage.read();
    if (tokens?.token != null) {
      try {
        await _service
            .logout(
          deviceToken: tokens?.firebaseToken ?? '',
        )
            .then((_) async {
          await _tokenStorage.delete().then((_) async {
            await FirebaseMessaging.instance.deleteToken().then((_) {
              currentUserStream.add(null);
              currentUser = null;
            });
          });
        });
      } catch (ex) {
        debugPrint(ex.toString());
      }
    }
    return result;
  }

  @override
  Future<UserModel?> updateUser(UserModel user) async {
    final response = await _service.updateUser(user: user);
    currentUserStream.add(response);
    currentUser = response;
    return response;
  }

  @override
  Future<bool> recoveryPassword({
    required String email,
  }) async {
    final response = await _service.recoveryPassword(email: email);
    return response != null;
  }

  @override
  Future<bool> registerContractor({
    required String email,
    required String password,
    required String name,
    required String license,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> getLibraries() async {
    await _service.getLibraries().then((value) {
      Map<String, dynamic> response = {};
      if (value != null) {
        if (value is Map) {
          value.forEach((k, v) {
            response.addAll({
              k: v
                  .map((e) => {
                        "a": e[0],
                        "b": e[1],
                      })
                  .toList(),
            });
          });

          if (response.containsKey("notification_types")) {
            final list = response["notification_types"];
            for (var value in list) {
              ItemModel item = ItemModel(
                id: value["a"],
                name: value["b"],
              );
              notificationTypes.add(item);
            }
          }
          if (value.containsKey("measuring")) {
            final list = response["measuring"];
            for (var value in list) {
              ItemModel item = ItemModel(
                name: value["b"],
                description: value["a"],
              );
              measuringList.add(item);
            }
          }
          if (value.containsKey("languages")) {
            final list = response["languages"];
            for (var value in list) {
              ItemModel item = ItemModel(
                name: value["b"],
                description: value["a"],
              );
              languagesList.add(item);
            }
          }
        }
      }
    });
  }

  @override
  List<ItemModel> languagesList = [];

  @override
  List<ItemModel> measuringList = [];

  @override
  List<ItemModel> notificationTypes = [];

  @override
  Future<bool> updateActivities({required List<ActivityModel> activities}) async {
    final response = await _service.updateActivities(
      activities: activities.map((e) => e.toJson()).toList(),
    );
    return response != null;
  }

  @override
  Future<PortfolioModel?> getPortfolio() async {
    final response = await _service.getPortfolio();
    return response;
  }

  @override
  Future<bool> addPhoto({required File image}) async {
    final response = await _service.addPhoto(image: image);
    return response != null;
  }

  @override
  Future<bool> addVideo({required String url}) async {
    final response = await _service.addVideo(url: url);
    return response != null;
  }

  @override
  Future<bool> deleteImage(int id) async {
    final response = await _service.deleteImage(id: id);
    return response != null;
  }

  @override
  Future<bool> deleteVideo(int id) async {
    final response = await _service.deleteVideo(id: id);
    return response != null;
  }

  @override
  Future<List<ActivityModel>?> getUserActivities({required int userId}) async {
    final response = await _service.getUserActivities(userId: userId);
    final list = (response as Map)["activities"] as List;
    final result = list.map((e) => ActivityModel.fromJson(e)).toList();
    return result;
  }

  @override
  Future<bool> addTextBlock({
    required List<ItemModel> textBlocks,
  }) async {
    final response = await _service.addTextBlock(
      textblocks: textBlocks.map((e) => e.toJson()).toList(),
    );
    return response != null;
  }

  @override
  Future<List<ItemModel>?> updateTextBlock({required List<ItemModel> textBlocks}) async {
    final response = await _service.updateTextBlock(
      textblocks: textBlocks.map((e) => e.toJson()).toList(),
    );
    return response;
  }

  @override
  Future<bool> addActivities({required List<ActivityModel> activities}) async {
    final response = await _service.addActivities(
      activities: activities.map((e) => e.toJson()).toList(),
    );
    return response != null;
  }

  @override
  Future<bool> deleteActivity({
    required int id,
  }) async {
    final response = await _service.deleteActivity(id: id);
    return response != null;
  }

  @override
  Future<AvatarModel?> uploadAvatar({
    required File avatar,
  }) async {
    final response = await _service.updateAvatar(avatar: avatar);
    return response;
  }

  @override
  Future<String?> verifyPhone({
    required String phone,
    required String action,
    String? code,
  }) async {
    final response = await _service.verifyPhone(
      phone: phone,
      action: action,
      code: code,
    );
    return response != null
        ? (response as Map).containsKey("status")
            ? response["status"]
            : 'success'
        : null;
  }

  @override
  Future<bool> licenseFileUpload({
    required File licenceFile,
    required File passportFile,
  }) async {
    final response = await _service.licenseFileUpload(
      licenceFile: licenceFile,
      passportFile: passportFile,
    );
    return response != null;
  }
}
