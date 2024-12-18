import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    Key? key,
    required this.user,
    this.size = 38,
    this.onTap,
    this.errorWidget,
    this.quality,
    this.tag,
    this.isEdit = false,
  }) : super(key: key);

  final UserModel? user;
  final double size;
  final Function()? onTap;
  final Widget? errorWidget;
  final double? quality;
  final String? tag;
  final bool isEdit;

  static void showAvatar({
    required BuildContext context,
    required String imageId,
  }) {
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.black,
      context: context,
      builder: (context) {
        final size = MediaQuery.sizeOf(context);
        return Stack(
          alignment: Alignment.topRight,
          children: [
            CachedNetworkImage(
              imageUrl: imageId,
              imageBuilder: (context, imageProvider) => Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              progressIndicatorBuilder: (context, url, downloadProgress) {
                return const Opacity(
                  opacity: 0.3,
                  child: CircularProgressIndicator(),
                );
              },
              errorWidget: (context, url, error) {
                return const Icon(Icons.error);
              },
            ),
            IconButton(
              onPressed: () => Navigator.pop(context),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 32,
              ),
            ),
          ],
        );
      },
    );
  }

  static void showPreviewAvatar({
    required BuildContext context,
    required String imageId,
    required Function() onTap,
    String? tag,
  }) {
    final size = MediaQuery.sizeOf(context);
    Navigator.of(context).push(PageRouteBuilder(
        barrierColor: Colors.black54,
        opaque: false,
        barrierDismissible: true,
        pageBuilder: (BuildContext context, _, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              GestureDetector(
                onTap: onTap,
                child: Hero(
                  tag: tag ?? '',
                  child: CachedNetworkImage(
                    imageUrl: "${dotenv.env['BASE_URL_DEV'] ?? baseUrl}$imageId",
                    imageBuilder: (context, imageProvider) => Container(
                      height: size.width * 0.7,
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    progressIndicatorBuilder: (context, url, downloadProgress) {
                      return const Opacity(
                        opacity: 0.3,
                        child: CircularProgressIndicator(),
                      );
                    },
                    errorWidget: (context, url, error) {
                      return const Icon(Icons.error);
                    },
                  ),
                ),
              ),
            ],
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    final appScope = context.read<IAppScope>();
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Hero(
        tag: tag ?? '',
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            color: AppColors.secondary,
            borderRadius: BorderRadius.circular(size / 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size / 2),
            child: Stack(
              alignment: Alignment.center,
              children: [
                user?.avatar != null
                    ? CachedNetworkImage(
                        imageUrl: '${appScope.appConfig.host}${user!.avatar!}',
                        errorListener: (errors) {
                          debugPrint(errors.toString());
                        },
                        imageBuilder: (
                          context,
                          imageProvider,
                        ) =>
                            Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        progressIndicatorBuilder: (
                          context,
                          url,
                          downloadProgress,
                        ) =>
                            CircleAvatar(
                          radius: size / 2,
                          backgroundColor: theme.colorScheme.secondary,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        errorWidget: (
                          context,
                          url,
                          error,
                        ) =>
                            CircleAvatar(
                          radius: size / 2,
                          backgroundColor: theme.colorScheme.secondary,
                          child: Center(
                            child: Icon(
                              Icons.photo_camera_rounded,
                              size: size / 2,
                            ),
                          ),
                        ),
                      )
                    : errorWidget ??
                        CircleAvatar(
                          radius: size,
                          backgroundColor: avatarColors[Random().nextInt(7)],
                          child: Center(
                            child: Text(
                              user?.name != null
                                  ? user!.name![0]
                                  : user?.email != null
                                      ? user!.email![0]
                                      : 'You\nphoto',
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Colors.white,
                                fontSize: user?.name == null && user?.name == null ? 16 : size / 2,
                                height: 1,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                if (isEdit)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.icons.cameraIcon,
                        color: theme.colorScheme.surface,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        AppLocale.editPhoto,
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.surface,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static AppAvatar of(BuildContext context) => AppAvatar.of(context);
}
