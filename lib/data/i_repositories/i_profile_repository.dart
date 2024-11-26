import 'package:everlook_mobile/core/architecture/domain/entity/request_operation.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:rxdart/rxdart.dart';

abstract interface class IProfileRepository {
  UserModel? currentUser;
  final currentUserStream = BehaviorSubject<UserModel?>.seeded(null);

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

  Future<bool> logout();

  Future<UserModel?> updateUser(UserModel user);

  Future<UserModel?> recoveryPassword({
    required String email,
  });
}
