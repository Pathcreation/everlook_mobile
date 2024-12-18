import 'package:everlook_mobile/source/imports.dart';
import 'package:image_picker/image_picker.dart';

/// {@template profile_model.class}
/// [ElementaryModel] for [ProfileScreen].
/// {@endtemplate}
final class SettingsModel extends ElementaryModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _state = UnionStateNotifier<bool>.new(true);
  final _verifyPhoneSend = UnionStateNotifier<bool>.new(false);
  final _user = UnionStateNotifier<UserModel?>.new(null);
  final _formatHourDay = UnionStateNotifier<bool>.new(false);
  final _amPmFrom = UnionStateNotifier<bool>.new(false);
  final _amPmTo = UnionStateNotifier<bool>.new(false);
  List<ItemModel> notificationTypes = [];
  List<ItemModel> measuringList = [];
  List<ItemModel> languagesList = [];
  List<XFile> licenseFiles = [];

  UnionStateNotifier<UserModel?> get user => _user;

  UnionStateNotifier<bool> get formatHourDay => _formatHourDay;

  UnionStateNotifier<bool> get state => _state;

  UnionStateNotifier<bool> get verifyPhoneSend => _verifyPhoneSend;

  UnionStateNotifier<bool> get amPmFrom => _amPmFrom;

  UnionStateNotifier<bool> get amPmTo => _amPmTo;

  final _licenseTextController = TextEditingController();
  final _phoneTextController = TextEditingController();
  final _codeTextController = TextEditingController();
  final _startWorkingTimeController = TextEditingController();
  final _endWorkingTimeController = TextEditingController();

  TextEditingController get licenseTextController => _licenseTextController;

  TextEditingController get phoneTextController => _phoneTextController;

  TextEditingController get codeTextController => _codeTextController;

  TextEditingController get startWorkingTimeController => _startWorkingTimeController;

  TextEditingController get endWorkingTimeController => _endWorkingTimeController;

  /// {@macro profile_model.class}
  SettingsModel({
    required IAppScope appScope,
    super.errorHandler,
  })  : _appScope = appScope,
        notificationTypes = appScope.profileRepository.notificationTypes,
        measuringList = appScope.profileRepository.measuringList,
        languagesList = appScope.profileRepository.languagesList;

  @override
  void init() async {
    await getCurrentUser();
    super.init();
  }

  Future<void> getCurrentUser() async {
    _state.loading();
    await _appScope.profileRepository.getCurrentUser().then((result) async {
      _user.content(result);
      _amPmFrom.content(result?.allowCallsFromAmpm != 'AM');
      _amPmTo.content(result?.allowCallsToAmpm != 'AM');
      _startWorkingTimeController.text = result?.allowCallsFrom ?? '';
      _endWorkingTimeController.text = result?.allowCallsTo ?? '';
      _formatHourDay.content(result?.callsFormat24 ?? false);
      phoneTextController.text = result?.phone ?? '';
      licenseTextController.text = result?.licenseNumber ?? '';
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

  void saveUser() async {
    _user.loading(_user.value.data);
    UserModel? user = _user.value.data;
    if (user != null) {
      user = user.copyWith(
        phone: _phoneTextController.text,
        allowCallsFrom: startWorkingTimeController.text,
        allowCallsTo: endWorkingTimeController.text,
      );
      await _appScope.profileRepository.updateUser(user).then((response) {
        _user.content(response);
      });
    }
  }

  void changeLicense(String value) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(user.copyWith(
        licenseNumber: value,
      ));
    }
  }

  void changeFormatHourDay() {
    _formatHourDay.content(!(_formatHourDay.value.data ?? false));
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          callsFormat24: _formatHourDay.value.data,
        ),
      );
    }
  }

  void changeAmPmFrom() {
    bool formatHourDay = _formatHourDay.value.data ?? false;
    _amPmFrom.content(!(_amPmFrom.value.data ?? false));
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          allowCallsFrom: startWorkingTimeController.text,
          allowCallsFromAmpm: formatHourDay ? null : ((_amPmFrom.value.data ?? false) ? 'PM' : 'AM'),
        ),
      );
    }
  }

  void changeAmPmTo() {
    bool formatHourDay = _formatHourDay.value.data ?? false;
    _amPmTo.content(!(_amPmTo.value.data ?? false));
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          allowCallsTo: endWorkingTimeController.text,
          allowCallsToAmpm: formatHourDay ? null : ((_amPmTo.value.data ?? false) ? 'PM' : 'AM'),
        ),
      );
    }
  }

  void changeUnits(String value) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          measuring: value,
        ),
      );
    }
  }

  void changeWorkingDays(List<String> value) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          workingDays: value,
        ),
      );
    }
  }

  void changeLanguages(List<String> value) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          nativeLanguage: value,
        ),
      );
    }
  }

  void changeNotifications(List<int> value) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(
          notificationTypes: value,
        ),
      );
    }
  }

  void chooseOnMap({
    bool isDelete = false,
  }) {
    UserModel? user = _user.value.data;
    if (user != null) {
      _user.content(
        user.copyWith(address: isDelete ? null : 'qwerty'),
      );
    }
  }

  void changeAvatar(XFile file) async {
    UserModel? user = _user.value.data;
    if (user != null) {
      await _appScope.profileRepository
          .uploadAvatar(
        avatar: File(file.path),
      )
          .then((avatar) {
        _user.content(
          user.copyWith(
            avatar: avatar?.avatar,
          ),
        );
      });
    }
  }

  void verifyPhone() async {
    if (_phoneTextController.text.isNotEmpty) {
      await _appScope.profileRepository
          .verifyPhone(
        phone: _phoneTextController.text,
        action: 'send',
      )
          .then((value) async {
        if (value != null) {
          showMessage(
            message: 'The code has been sent to the specified phone number',
            type: PageState.success,
          );
          _verifyPhoneSend.content(true);
        }
      });
    }
  }

  void sendCode() async {
    if (_phoneTextController.text.isNotEmpty) {
      await _appScope.profileRepository
          .verifyPhone(
        phone: _phoneTextController.text,
        code: _codeTextController.text,
        action: 'check',
      )
          .then((value) async {
        if (value != null) {
          await getCurrentUser().then((_) {
            if (_user.value.data?.phoneVerified ?? false) {
              showMessage(
                message: 'Phone number verified',
                type: PageState.success,
              );
            }
          });
        }
      });
    }
  }

  void addLicenseFiles(List<XFile> files) async {
    await _appScope.profileRepository
        .licenseFileUpload(
      licenceFile: File(files[0].path),
      passportFile: File(files[1].path),
    )
        .then((value) {
      showMessage(
        message: 'Files added',
        type: PageState.success,
      );
    });
  }

  void changePassword() async {
    if (_user.value.data?.email != null) {
      await _appScope.profileRepository.recoveryPassword(email: _user.value.data!.email!).then((value) {
        if (value) {
          showMessage(
            message: 'The code to change the password has been sent to the specified email address',
            type: PageState.success,
          );
        }
      });
    }
  }
}
