import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  const CircularProgressIndicatorWidget({
    Key? key,
    this.value,
  }) : super(key: key);

  final double? value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: CircularProgressIndicator(
        value: value,
        valueColor: AlwaysStoppedAnimation<Color>(
          theme.colorScheme.primary,
        ),
        backgroundColor: theme.colorScheme.tertiaryFixedDim,
        strokeWidth: 1,
      ),
    );
  }
}
