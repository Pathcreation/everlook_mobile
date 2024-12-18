import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DistanceWidget extends StatelessWidget {
  const DistanceWidget({
    super.key,
    required this.km,
  });

  final int? km;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.mapPointFilledIcon,
          color: theme.colorScheme.onSecondary,
          height: 15,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '${km.toString() ?? '0.0'} km',
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
