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
            .then((_) {
          _tokenStorage.delete();
          currentUserStream.add(null);
          currentUser = null;
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
  Future<UserModel?> recoveryPassword({
    required String email,
  }) {
    throw UnimplementedError();
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
}
