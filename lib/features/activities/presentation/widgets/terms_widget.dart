import 'dart:convert';

import 'package:everlook_mobile/features/activities/presentation/widgets/activities_body.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';

class TermsWidget extends StatelessWidget {
  const TermsWidget({
    super.key,
    required this.title,
    required this.terms,
    required this.onBack,
  });

  final String title;
  final String terms;
  final Function() onBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ActivitiesBody(
      title: title,
      onBack: onBack,
      children: [
        ElementContainer(
          children: [
            Text(
              'Terms of Emergency Response ',
              style: theme.textTheme.labelMedium,
            ),
            const SizedBox(
              height: 12,
            ),
            HtmlWidget(terms),
          ],
        ),
      ],
    );
  }
}
