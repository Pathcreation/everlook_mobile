import 'package:everlook_mobile/features/settings/presentation/widgets/license_verification.dart';
import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/ui_kit/map_screen.dart';
import 'package:image_picker/image_picker.dart';

import 'settings_model.dart';
import 'settings_screen.dart';

/// DI factory for [SettingsWM].
SettingsWM defaultSettingsWMFactory(BuildContext context) {
  final scope = context.read<IAppScope>();

  return SettingsWM(
    SettingsModel(
      appScope: scope,
    ),
  );
}

/// Interface for [SettingsWM].
abstract interface class ISettingsWM with ThemeIModelMixin implements IWidgetModel {
  Future<void> getCurrentUser();

  void changeWorkAs(String value);

  void changeLicense();

  void addLicenseFiles();

  void changeFormatHourDay();

  void changeAmPmFrom();

  void changeAmPmTo();

  void changeUnits(String value);

  void changeWorkingDays(List<String> value);

  void changeLanguages(List<String> value);

  void changeNotifications(List<int> value);

  void saveUser();

  void verifyPhone();

  void sendCode();

  void changeAvatar(XFile file);

  void chooseOnMap({
    bool isDelete = false,
  });

  void showError({
    required String message,
    required PageState type,
  });

  void changePassword();

  List<ItemModel> get notificationTypes;

  List<ItemModel> get measuringList;

  List<ItemModel> get languagesList;

  UnionStateNotifier<UserModel?> get user;

  UnionStateNotifier<bool> get state;

  UnionStateNotifier<bool> get formatHourDay;

  UnionStateNotifier<bool> get amPmFrom;

  UnionStateNotifier<bool> get amPmTo;

  UnionStateNotifier<bool> get verifyPhoneSend;

  TextEditingController get licenseTextController;

  TextEditingController get phoneTextController;

  TextEditingController get codeTextController;

  TextEditingController get startWorkingTimeController;

  TextEditingController get endWorkingTimeController;
}

/// {@template profile_wm.class}
/// [WidgetModel] for [ProfileScreen].
/// {@endtemplate}
final class SettingsWM extends WidgetModel<SettingsScreen, SettingsModel> with ThemeWMMixin implements ISettingsWM {
  /// {@macro profile_wm.class}
  SettingsWM(super._model);

  @override
  UnionStateNotifier<UserModel?> get user => model.user;

  @override
  UnionStateNotifier<bool> get formatHourDay => model.formatHourDay;

  @override
  UnionStateNotifier<bool> get amPmFrom => model.amPmFrom;

  @override
  UnionStateNotifier<bool> get amPmTo => model.amPmTo;

  @override
  TextEditingController get licenseTextController => model.licenseTextController;

  @override
  TextEditingController get phoneTextController => model.phoneTextController;

  @override
  void initWidgetModel() {
    notificationTypes = model.notificationTypes;
    measuringList = model.measuringList;
    languagesList = model.languagesList;
    super.initWidgetModel();
  }

  @override
  Future<void> getCurrentUser() async {
    await model.getCurrentUser();
  }

  @override
  void changeWorkAs(String value) {
    model.changeWorkAs(value);
  }

  @override
  TextEditingController get endWorkingTimeController => model.endWorkingTimeController;

  @override
  TextEditingController get startWorkingTimeController => model.startWorkingTimeController;

  @override
  List<ItemModel> languagesList = [];

  @override
  List<ItemModel> measuringList = [];

  @override
  List<ItemModel> notificationTypes = [];

  @override
  void changeLicense() {
    model.changeLicense(licenseTextController.text);
  }

  @override
  void changeFormatHourDay() {
    model.changeFormatHourDay();
  }

  @override
  void changeAmPmFrom() {
    model.changeAmPmFrom();
  }

  @override
  void changeAmPmTo() {
    model.changeAmPmTo();
  }

  @override
  void changeUnits(String value) {
    model.changeUnits(value);
  }

  @override
  void changeWorkingDays(List<String> value) {
    model.changeWorkingDays(value);
  }

  @override
  void changeLanguages(List<String> value) {
    model.changeLanguages(value);
  }

  @override
  void changeNotifications(List<int> value) {
    model.changeNotifications(value);
  }

  @override
  void saveUser() {
    model.saveUser();
  }

  @override
  UnionStateNotifier<bool> get state => model.state;

  @override
  void showError({
    required String message,
    required PageState type,
  }) {
    showMessage(
      message: message,
      type: type,
    );
  }

  @override
  void chooseOnMap({
    bool isDelete = false,
  }) {
    if (!isDelete) {
      showDialog(
        context: context,
        builder: (ctx) {
          return MapScreen();
        },
      );
    } else {
      model.chooseOnMap(isDelete: isDelete);
    }
  }

  @override
  void changeAvatar(XFile file) {
    model.changeAvatar(file);
  }

  @override
  void sendCode() {
    model.sendCode();
  }

  @override
  void verifyPhone() {
    model.verifyPhone();
  }

  @override
  UnionStateNotifier<bool> get verifyPhoneSend => model.verifyPhoneSend;

  @override
  TextEditingController get codeTextController => model.codeTextController;

  @override
  void addLicenseFiles() {
    showDialog(
      context: context,
      builder: (ctx) {
        return LicenseVerification(
          onTap: (files) {
            model.addLicenseFiles(files);
          },
        );
      },
    );
  }

  @override
  void changePassword() async {
    if (user.value.data?.email != null) {
      context.pushRoute(const RecoveryPasswordRoute());
    }
  }
}
