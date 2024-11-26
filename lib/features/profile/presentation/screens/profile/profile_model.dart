import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_screen.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template profile_model.class}
/// [ElementaryModel] for [ProfileScreen].
/// {@endtemplate}
final class ProfileModel extends ElementaryModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _state = UnionStateNotifier<bool>.new(false);
  final _user = UnionStateNotifier<UserModel?>.new(null);

  /// State of screen.
  UnionStateNotifier<UserModel?> get user => _user;

  /// {@macro profile_model.class}
  ProfileModel({
    required IAppScope appScope,
    super.errorHandler,
  }) : _appScope = appScope;

  Future<void> logout() async {
    _state.loading();
    await _appScope.profileRepository.logout().then((result) async {
      _state.content(result);
    });
  }

  Future<void> getCurrentUser() async {
    _state.loading();
    await _appScope.profileRepository.getCurrentUser().then((result) async {
      _user.content(result);
    });
    _state.content(false);
  }

  void changeWorkAs(String value) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(user.copyWith(
        workAs: value,
      ));
    }
  }
}
