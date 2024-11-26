import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/failure.dart';
import 'package:everlook_mobile/core/architecture/domain/entity/result.dart';
import 'package:everlook_mobile/core/architecture/presentation/base_model.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_screen.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template auth_model.class}
/// [ElementaryModel] for [AuthScreen].
/// {@endtemplate}
final class AuthModel extends BaseModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _state = UnionStateNotifier<bool>.new(false);

  UnionStateNotifier<bool> get state => _state;

  /// {@macro auth_model.class}
  AuthModel({
    required IAppScope appScope,
  }) : _appScope = appScope;

  Future<void> login({
    required String email,
    required String password,
  }) async {
    _state.loading();
    final result = await makeCall(() {
      return _appScope.profileRepository.login(
        email: email,
        password: password,
      );
    });
    switch (result) {
      case ResultOk(:final data):
        await _appScope.profileRepository.getCurrentUser().then((user) async {
          if (user != null) {
            await _appScope.tokenStorage.read().then((tokens) async {
              await _appScope.profileRepository
                  .updateUser(user.copyWith(
                deviceToken: tokens?.firebaseToken,
                platform: Platform.isAndroid ? 'android' : 'ios',
              ))
                  .then((_) {
                _state.content(data);
              });
            });
          }
        });
      case ResultFailed(:final failure):
        _state.failure(failure);
    }
  }
}
