import 'package:everlook_mobile/source/imports.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key? key,
    required this.imageId,
    this.height = 96,
    this.width = 96,
    this.borderRadius = 8,
    this.quality = 0.6,
    this.onTap,
  }) : super(key: key);

  final String? imageId;
  final double height;
  final double width;
  final double borderRadius;
  final double quality;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
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
          child: imageId != null && imageId!.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: "$baseUrl$clientService"
                      "?id=$imageId"
                      "&quality=$quality",
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
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (
                    context,
                    url,
                    error,
                  ) =>
                      const SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: CircularProgressIndicator(),
                ),
        ),
      ),
    );
  }

  static ImageWidget of(BuildContext context) => ImageWidget.of(context);

  /// Universal CircularProgressIndicator
  Widget _loadingWidget({
    required Color color,
    required double avatarDiameter,
  }) {
    return SizedBox(
      width: avatarDiameter,
      height: avatarDiameter,
      child: CircularProgressIndicator(
        strokeWidth: 1,
        color: color,
      ),
    );
  }
}
