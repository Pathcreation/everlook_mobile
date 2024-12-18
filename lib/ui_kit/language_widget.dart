import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({
    super.key,
    required this.languages,
  });

  final List<String> languages;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        SvgPicture.asset(
          Assets.icons.langIcon,
          color: theme.colorScheme.onSecondary,
          height: 15,
        ),
        const SizedBox(
          width: 12,
        ),
        Wrap(
          children: [
            ...List.generate(
              languages.length,
              (index) {
                return Text(
                  '${languages[index]}${index < languages.length - 1 ? ',' : ''}',
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.tertiaryFixed,
                    fontWeight: FontWeight.w500,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
