import 'package:everlook_mobile/features/settings/presentation/widgets/additional_block.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/youtube_player_widget.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'profile_wm.dart';

/// {@template settings_screen.class}
/// SettingsScreen.
/// {@endtemplate}
class ProfileScreen extends ElementaryWidget<IProfileWM> {
  /// {@macro settings_screen.class}
  const ProfileScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultProfileWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IProfileWM wm) {
    return Column(
      children: [
        const CustomAppBar(
          title: AppLocale.profile,
        ),
        Expanded(
          child: UnionStateListenableBuilder(
              unionStateListenable: wm.state,
              loadingBuilder: (_, __) => const CircularProgressIndicatorWidget(),
              failureBuilder: (_, ex, ___) => const SizedBox(),
              builder: (context, state) {
                return Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 8,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElementContainer(
                          children: [
                            Text(
                              AppLocale.photo,
                              style: wm.textScheme.labelMedium,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UnionStateListenableBuilder(
                                unionStateListenable: wm.photos,
                                loadingBuilder: (_, photos) => Stack(
                                      children: [
                                        if (photos != null)
                                          GridView(
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 8,
                                              childAspectRatio: 1.2,
                                            ),
                                            children: [
                                              ...List.generate(
                                                photos.length,
                                                (index) {
                                                  return ImageWidget(
                                                    onTap: () {},
                                                    image: photos[index].bigPreview,
                                                  );
                                                },
                                              ),
                                              GestureDetector(
                                                onTap: () async {
                                                  await getImage().then((file) {
                                                    if (file != null) {
                                                      wm.addPhoto(file);
                                                    }
                                                  });
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(14),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: wm.colorScheme.secondary,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      SvgPicture.asset(
                                                        Assets.icons.cameraIcon,
                                                        height: 18,
                                                        width: 18,
                                                      ),
                                                      const SizedBox(
                                                        height: 4,
                                                      ),
                                                      Text(
                                                        'Add Photos',
                                                        style: wm.textScheme.bodySmall!.copyWith(
                                                          color: wm.colorScheme.secondary,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        const SizedBox(
                                          height: 100,
                                          child: CircularProgressIndicatorWidget(),
                                        ),
                                      ],
                                    ),
                                failureBuilder: (_, ex, ___) => const SizedBox(),
                                builder: (context, photos) {
                                  return GridView(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 8,
                                      childAspectRatio: 1.2,
                                    ),
                                    children: [
                                      ...List.generate(
                                        photos.length,
                                        (index) {
                                          return Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              ImageWidget(
                                                onTap: () {
                                                  final imageProvider = Image.network('${dotenv.env['BASE_URL_DEV'] ?? baseUrl}${photos[index].bigPreview}').image;
                                                  showImageViewer(context, imageProvider, onViewerDismissed: () {
                                                    print("dismissed");
                                                  });
                                                },
                                                image: photos[index].bigPreview,
                                              ),
                                              Positioned(
                                                top: 6,
                                                right: 6,
                                                child: InkWell(
                                                  onTap: () {
                                                    wm.removePhoto(photos[index].id!);
                                                  },
                                                  child: SvgPicture.asset(
                                                    Assets.icons.closeBlueIcon2,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      GestureDetector(
                                        onTap: () async {
                                          await getImage().then((file) {
                                            if (file != null) {
                                              wm.addPhoto(file);
                                            }
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(14),
                                            border: Border.all(
                                              width: 1,
                                              color: wm.colorScheme.secondary,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              SvgPicture.asset(
                                                Assets.icons.cameraIcon,
                                                height: 18,
                                                width: 18,
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                'Add Photos',
                                                style: wm.textScheme.bodySmall!.copyWith(
                                                  color: wm.colorScheme.secondary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ElementContainer(
                          children: [
                            Text(
                              AppLocale.video,
                              style: wm.textScheme.labelMedium,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UnionStateListenableBuilder(
                                unionStateListenable: wm.video,
                                loadingBuilder: (_, video) => Stack(
                                      children: [
                                        if (video != null)
                                          GridView(
                                            shrinkWrap: true,
                                            physics: const NeverScrollableScrollPhysics(),
                                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 3,
                                              crossAxisSpacing: 10,
                                              mainAxisSpacing: 8,
                                              childAspectRatio: 1.88,
                                            ),
                                            children: [
                                              ...List.generate(
                                                video!.length,
                                                (index) {
                                                  return Stack(
                                                    fit: StackFit.expand,
                                                    children: [
                                                      ImageWidget(
                                                        image: video[index].img,
                                                      ),
                                                      Positioned(
                                                        top: 6,
                                                        right: 6,
                                                        child: InkWell(
                                                          child: SvgPicture.asset(
                                                            Assets.icons.closeBlueIcon2,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              ),
                                            ],
                                          ),
                                        const SizedBox(
                                          height: 100,
                                          child: CircularProgressIndicatorWidget(),
                                        ),
                                      ],
                                    ),
                                failureBuilder: (_, ex, ___) => const SizedBox(),
                                builder: (context, video) {
                                  return GridView(
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 8,
                                      childAspectRatio: 1.88,
                                    ),
                                    children: [
                                      ...List.generate(
                                        video.length,
                                        (index) {
                                          return Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              ImageWidget(
                                                onTap: () {
                                                  YoutubePlayerWidget.showYoutubePlayer(
                                                    context: context,
                                                    link: video[index].url!,
                                                  );
                                                },
                                                image: video[index].img,
                                              ),
                                              Positioned(
                                                top: 6,
                                                right: 6,
                                                child: InkWell(
                                                  onTap: () {
                                                    wm.removeVideo(video[index].id!);
                                                  },
                                                  child: SvgPicture.asset(
                                                    Assets.icons.closeBlueIcon2,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ],
                                  );
                                }),
                            const SizedBox(
                              height: 8,
                            ),
                            AppButton(
                              title: 'Add video',
                              titlePadding: 0,
                              width: 120,
                              color: wm.colorScheme.secondary,
                              onPressed: () async {
                                wm.inputLinkVideo();
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        UnionStateListenableBuilder(
                          unionStateListenable: wm.additionalBlockTextControllers,
                          loadingBuilder: (_, __) => const CircularProgressIndicator(),
                          failureBuilder: (_, ex, ___) => const SizedBox(),
                          builder: (context, additionalBlockTextControllers) {
                            return ElementContainer(
                              children: [
                                Text(
                                  'Main Content block',
                                  style: wm.textScheme.bodySmall!.copyWith(
                                    color: wm.colorScheme.tertiaryFixed,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                ...List.generate(
                                  additionalBlockTextControllers.length,
                                  (index) {
                                    return index == 0
                                        ? AppTextField(
                                            maxLines: 10,
                                            maxHeight: 170,
                                            hintText: 'Describe your company and service',
                                            textController: additionalBlockTextControllers[index].$2,
                                          )
                                        : AdditionalBlock(
                                            headeTextController: additionalBlockTextControllers[index].$1,
                                            contentTextController: additionalBlockTextControllers[index].$2,
                                            onDelete: () => wm.deleteAdditionalBlock(index),
                                          );
                                  },
                                ),
                                if (additionalBlockTextControllers.length < 3)
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Divider(
                                        height: 33,
                                        thickness: 1,
                                      ),
                                      AppButton(
                                        title: 'Add additional content block',
                                        titlePadding: 0,
                                        width: 264,
                                        color: wm.colorScheme.secondary,
                                        onPressed: () => wm.addAdditionalBlock(),
                                      ),
                                    ],
                                  ),
                              ],
                            );
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AppButton(
                          title: 'Save Changes',
                          titlePadding: 0,
                          onPressed: () {
                            wm.save();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
