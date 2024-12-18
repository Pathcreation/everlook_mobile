import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.image,
    this.height = 72,
    this.width = 72,
    this.borderRadius = 14,
    this.onTap,
  }) : super(key: key);

  final String? image;
  final double height;
  final double width;
  final double borderRadius;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: SizedBox(
        width: width,
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: image != null && image!.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: "${dotenv.env['BASE_URL_DEV'] ?? baseUrl}$image",
                  // imageUrl: image!,
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
                      const SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: CircularProgressIndicatorWidget(),
                  ),
                  errorWidget: (
                    context,
                    url,
                    error,
                  ) =>
                      Container(
                    height: double.infinity,
                    width: double.infinity,
                    color: theme.colorScheme.secondaryFixedDim,
                    child: const CircularProgressIndicatorWidget(),
                  ),
                )
              : Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: theme.colorScheme.secondary.withOpacity(0.3),
                  child: Center(
                    child: SvgPicture.asset(
                                          Assets.icons.cameraIcon,
                                          height: 30,
                                          color: theme.colorScheme.secondary.withOpacity(0.6),
                                        ),
                  ),
                ),
        ),
      ),
    );
  }
  static ImageWidget of(BuildContext context) => ImageWidget.of(context);

}
