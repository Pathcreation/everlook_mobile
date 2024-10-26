import 'package:everlook_mobile/source/imports.dart';

class AppAvatar extends StatelessWidget {
  const AppAvatar({
    Key? key,
    required this.imageId,
    this.size = 38,
    this.onTap,
    this.errorWidget,
    this.quality,
    this.tag,
  }) : super(key: key);

  final String imageId;
  final double size;
  final Function()? onTap;
  final Widget? errorWidget;
  final double? quality;
  final String? tag;

  static void showAvatar({
    required BuildContext context,
    required String? imageId,
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
              imageUrl: "$baseUrl$clientService"
                  "?id=$imageId"
                  "&quality=1",
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
    required String? imageId,
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
                    imageUrl: "$baseUrl$clientService"
                        "?id=$imageId"
                        "&quality=0.5",
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
            color: AppColors.additional1,
            borderRadius: BorderRadius.circular(40),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size / 2),
            child: imageId.isNotEmpty
                ? CachedNetworkImage(
                    imageUrl: "$baseUrl$clientService"
                        "?id=$imageId"
                        "&quality=${quality ?? '0.5'}",
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
                      backgroundColor: AppColors.post,
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
                      backgroundColor: AppColors.post,
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
                      backgroundColor: AppColors.post,
                      child: Center(
                        child: Icon(
                          Icons.photo_camera_rounded,
                          size: size / 2,
                        ),
                      ),
                    ),
          ),
        ),
      ),
    );
  }

  static AppAvatar of(BuildContext context) => AppAvatar.of(context);
}

