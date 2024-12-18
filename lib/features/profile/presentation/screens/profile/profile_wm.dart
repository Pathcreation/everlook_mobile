import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/features/profile/presentation/widgets/link_video_dialog.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/common/mixin/theme_wm_mixin.dart';
import 'package:everlook_mobile/features/settings/di/settings_scope.dart';
import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_model.dart';
import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

/// DI factory for [SettingsWM].
ProfileWM defaultProfileWMFactory(BuildContext context) {
  final scope = context.read<IAppScope>();

  return ProfileWM(ProfileModel(appScope: scope));
}

/// Interface for [SettingsWM].
abstract interface class IProfileWM with ThemeIModelMixin implements IWidgetModel {
  void addAdditionalBlock();

  void addPhoto(XFile value);

  void addVideo(String value);

  void removePhoto(int id);

  void removeVideo(int id);

  void deleteAdditionalBlock(int index);

  void inputLinkVideo();

  void save();

  UnionStateNotifier<List<(TextEditingController, TextEditingController)>> get additionalBlockTextControllers;

  UnionStateNotifier<List<ImageModel>> get photos;

  UnionStateNotifier<List<VideoModel>> get video;

  UnionStateNotifier<bool> get state;
}

/// {@template settings_wm.class}
/// [WidgetModel] for [SettingsScreen].
/// {@endtemplate}
final class ProfileWM extends WidgetModel<ProfileScreen, ProfileModel> with ThemeWMMixin implements IProfileWM {
  /// {@macro settings_wm.class}
  ProfileWM(super._model);

  @override
  void addAdditionalBlock() {
    model.addAdditionalBlock();
  }

  @override
  void deleteAdditionalBlock(int index) {
    model.deleteAdditionalBlock(index);
  }

  @override
  UnionStateNotifier<List<(TextEditingController, TextEditingController)>> get additionalBlockTextControllers => model.additionalBlockTextControllers;

  @override
  void addPhoto(XFile value) {
    model.addPhoto(value);
  }

  @override
  void addVideo(String value) {
    model.addVideo(value);
  }

  @override
  void removePhoto(int id) {
    model.removePhoto(id);
  }

  @override
  void removeVideo(int id) {
    model.removeVideo(id);
  }

  @override
  UnionStateNotifier<List<ImageModel>> get photos => model.photos;

  @override
  UnionStateNotifier<List<VideoModel>> get video => model.video;

  @override
  void inputLinkVideo() {
    showDialog(
      context: context,
      builder: (ctx) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            LinkVideoDialog(
              onSave: (link) {
                addVideo(link);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void save() {
    model.save();
  }

  @override
  UnionStateNotifier<bool> get state => model.state;
}
