import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';

class PriceRangeWidget extends StatelessWidget {
  const PriceRangeWidget({
    super.key,
    required this.startPrice,
    required this.endPrice,
  });

  final int startPrice;
  final int endPrice;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.sticker,
          color: theme.colorScheme.onSecondary,
          height: 15,
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          '$startPrice - $endPrice AED',
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.tertiary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
