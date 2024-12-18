import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhotoCountWidget extends StatelessWidget {
  const PhotoCountWidget({
    super.key,
    required this.photoCount,
  });

  final int? photoCount;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.cameraIcon,
          color: theme.colorScheme.onSecondary,
          height: 14,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          photoCount.toString(),
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
