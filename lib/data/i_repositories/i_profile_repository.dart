import 'package:everlook_mobile/core/architecture/domain/entity/request_operation.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:rxdart/rxdart.dart';

abstract interface class IProfileRepository {
  UserModel? currentUser;
  final currentUserStream = BehaviorSubject<UserModel?>.seeded(null);
  List<ItemModel> notificationTypes = [];
  List<ItemModel> measuringList = [];
  List<ItemModel> languagesList = [];

  RequestOperation<bool> login({
    required String email,
    required String password,
    String? name,
  });

  Future<bool> registerContractor({
    required String email,
    required String password,
    required String name,
    required String license,
  });

  Future<UserModel?> getCurrentUser();

  Future<void> getLibraries();

  Future<bool> logout();

  Future<UserModel?> updateUser(UserModel user);

  Future<bool> recoveryPassword({
    required String email,
  });

  Future<bool> addActivities({
    required List<ActivityModel> activities,
  });

  Future<bool> updateActivities({
    required List<ActivityModel> activities,
  });

  Future<bool> deleteActivity({
    required int id,
  });

  Future<List<ActivityModel>?> getUserActivities({
    required int userId,
  });

  Future<PortfolioModel?> getPortfolio();

  Future<AvatarModel?> uploadAvatar({
    required File avatar,
  });

  Future<bool> addPhoto({
    required File image,
  });

  Future<bool> addVideo({
    required String url,
  });

  Future<bool> deleteImage(int id);

  Future<bool> deleteVideo(int id);

  Future<bool> addTextBlock({
    required List<ItemModel> textBlocks,
  });

  Future<List<ItemModel>?> updateTextBlock({
    required List<ItemModel> textBlocks,
  });

  Future<String?> verifyPhone({
    required String phone,
    required String action,
    String? code,
  });

  Future<Object?> licenseFileUpload({
    required File licenceFile,
    required File passportFile,
  });
}
