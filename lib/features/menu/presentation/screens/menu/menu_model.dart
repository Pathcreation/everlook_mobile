import 'package:everlook_mobile/core/architecture/presentation/base_model.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_screen.dart';
import 'package:everlook_mobile/source/imports.dart';

/// {@template menu_model.class}
/// [ElementaryModel] for [MenuScreen].
/// {@endtemplate}
final class MenuModel extends BaseModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _user = UnionStateNotifier<UserModel?>.new(null);

  /// State of screen.
  UnionStateNotifier<UserModel?> get user => _user;

  /// {@macro menu_model.class}
  MenuModel({
    required IAppScope appScope,
  }) : _appScope = appScope;

  @override
  void init() {
    _user.content(_appScope.profileRepository.currentUser);
    super.init();
  }

  Future<void> logout() async {
    await _appScope.profileRepository.logout();
  }
}
