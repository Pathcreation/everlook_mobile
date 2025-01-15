import 'package:enum_assist_annotation/enum_assist_annotation.dart';
import 'package:everlook_mobile/features/recovery_password/presentation/screens/recovery_password/recovery_password_screen.dart';
import 'package:everlook_mobile/source/imports.dart';

@EnumAssist()
enum RecoveryPasswordState {
  sendEmail,
  savePassword;

  T map<T>({
    required T Function() sendEmail,
    required T Function() savePassword,
  }) {
    switch (this) {
      case RecoveryPasswordState.sendEmail:
        return sendEmail();
      case RecoveryPasswordState.savePassword:
        return savePassword();
    }
  }

  T maybeMap<T>({
    required T Function() orElse,
    T Function()? sendEmail,
    T Function()? savePassword,
  }) =>
      map<T>(
        sendEmail: sendEmail ?? orElse,
        savePassword: savePassword ?? orElse,
      );
}

/// {@template recovery_password_model.class}
/// [ElementaryModel] for [RecoveryPasswordScreen].
/// {@endtemplate}
final class RecoveryPasswordModel extends ElementaryModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _state = UnionStateNotifier<RecoveryPasswordState>.new(RecoveryPasswordState.sendEmail);

  UnionStateNotifier<RecoveryPasswordState> get state => _state;

  final _emailTextController = TextEditingController();

  TextEditingController get emailTextController => _emailTextController;

  bool isAuthorized = false;

  /// {@macro recovery_password_model.class}
  RecoveryPasswordModel({
    required IAppScope appScope,
    super.errorHandler,
  }) : _appScope = appScope;

  @override
  void init() async {
    final tokens = await _appScope.tokenStorage.read();
    isAuthorized = tokens?.token != null;
    emailTextController.text = _appScope.profileRepository.currentUser?.email ?? '';
    super.init();
  }

  Future<bool> sendRecoveryLink() async {
    String? email = _appScope.profileRepository.currentUser?.email;
    if (email != null) {
      return await _appScope.profileRepository.recoveryPassword(email: email);
    }
    return false;
  }
}
