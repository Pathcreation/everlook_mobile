import 'package:everlook_mobile/core/architecture/presentation/base_model.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:image_picker/image_picker.dart';

/// {@template settings_model.class}
/// [ElementaryModel] for [SettingsScreen].
/// {@endtemplate}
final class ProfileModel extends BaseModel {
  // ignore: unused_field
  final IAppScope _appScope;
  final _additionalBlockTextControllers = UnionStateNotifier<List<(TextEditingController, TextEditingController)>>.new([
    (
      TextEditingController(),
      TextEditingController(),
    )
  ]);
  final _photos = UnionStateNotifier<List<ImageModel>>.new([]);
  final _video = UnionStateNotifier<List<VideoModel>>.new([]);
  final _state = UnionStateNotifier<bool>.loading();

  UnionStateNotifier<List<(TextEditingController, TextEditingController)>> get additionalBlockTextControllers => _additionalBlockTextControllers;

  UnionStateNotifier<List<ImageModel>> get photos => _photos;

  UnionStateNotifier<List<VideoModel>> get video => _video;

  UnionStateNotifier<bool> get state => _state;

  List<ItemModel> _blocks = [];

  /// {@macro settings_model.class}
  ProfileModel({
    required IAppScope appScope,
  }) : _appScope = appScope;

  @override
  void init() async {
    _state.loading();
    await _appScope.profileRepository.getPortfolio().then((response) {
      _photos.content(response?.images ?? []);
      _video.content(response?.videos ?? []);
      _blocks = response?.textblocks ?? [];
      if (_blocks.isNotEmpty) {
        List<(TextEditingController, TextEditingController)> controllers = [];
        for (var i = 0; i < _blocks.length; ++i) {
          controllers.add(
            (
              TextEditingController(
                text: _blocks[i].header ?? '',
              ),
              TextEditingController(
                text: _blocks[i].text ?? '',
              ),
            ),
          );
          additionalBlockTextControllers.content(controllers);
        }
      }
    });
    _state.content(false);
    super.init();
  }

  void addAdditionalBlock() {
    final controllers = additionalBlockTextControllers.value.data ?? [];
    additionalBlockTextControllers.loading(controllers);
    controllers.add((
      TextEditingController(),
      TextEditingController(),
    ));
    additionalBlockTextControllers.content(controllers);
  }

  void deleteAdditionalBlock(int index) {
    final controllers = additionalBlockTextControllers.value.data;
    additionalBlockTextControllers.loading(controllers);
    if (controllers != null) {
      controllers.removeAt(index);
      additionalBlockTextControllers.content(controllers);
    }
  }

  void addPhoto(XFile value) async {
    photos.loading(photos.value.data ?? []);
    await _appScope.profileRepository
        .addPhoto(
      image: File(value.path),
    )
        .then((response) async {
      await _appScope.profileRepository.getPortfolio().then((resp) {
        photos.content(resp?.images ?? []);
      });
    });
  }

  void addVideo(String value) async {
    video.loading(video.value.data ?? []);
    await _appScope.profileRepository
        .addVideo(
      url: value,
    )
        .then((response) async {
      await _appScope.profileRepository.getPortfolio().then((resp) {
        video.content(resp?.videos ?? []);
      });
    });
  }

  void removePhoto(int id) async {
    photos.loading(photos.value.data ?? []);
    await _appScope.profileRepository.deleteImage(id).then((response) async {
      await _appScope.profileRepository.getPortfolio().then((resp) {
        photos.content(resp?.images ?? []);
      });
    });
    photos.content(photos.value.data ?? []);
  }

  void removeVideo(int id) async {
    await _appScope.profileRepository.deleteVideo(id).then((response) async {
      await _appScope.profileRepository.getPortfolio().then((resp) {
        video.content(resp?.videos ?? []);
      });
    });
    video.content(video.value.data ?? []);
  }

  void save() async {
    List<(TextEditingController, TextEditingController)> controllers = [];
    for (var item in _additionalBlockTextControllers.value.data ?? []) {
      controllers.add(item);
    }
    if (_blocks.isNotEmpty) {
      List<ItemModel> blocks = [];

      for (var i = 0; i < _blocks.length; ++i) {
        var block = _blocks[i];
        blocks.add(ItemModel(
          id: block.id,
          header: controllers[i].$1.text,
          text: controllers[i].$2.text,
        ));
      }
      await _appScope.profileRepository.updateTextBlock(
        textBlocks: blocks,
      );
    } else {
      List<ItemModel> blocks = [];

      for (var i = 0; i < controllers.length; ++i) {
        final (controller1, controller2) = controllers[i];
        blocks.add(ItemModel(
          header: controller1.text,
          text: controller2.text,
        ));
      }

      await _appScope.profileRepository
          .addTextBlock(
        textBlocks: blocks,
      )
          .then((response) async {
        await _appScope.profileRepository.getPortfolio().then((response) {
          _blocks = response?.textblocks ?? [];
          if (_blocks.isNotEmpty) {
            List<(TextEditingController, TextEditingController)> controllers = [];
            for (var i = 0; i < _blocks.length; ++i) {
              controllers.add(
                (
                  TextEditingController(
                    text: _blocks[i].header ?? '',
                  ),
                  TextEditingController(
                    text: _blocks[i].text ?? '',
                  ),
                ),
              );
              additionalBlockTextControllers.content(controllers);
            }
          }
        });
      });
    }
  }
}
