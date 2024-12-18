import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip({
    super.key,
    required this.label,
    required this.isSelect,
    required this.onSelect,
  });

  final String label;
  final bool isSelect;
  final Function() onSelect;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        height: 28,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        decoration: BoxDecoration(
          color: isSelect ? theme.colorScheme.onPrimary : theme.colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            label,
            style: theme.textTheme.bodySmall!.copyWith(
              color: isSelect ? theme.colorScheme.primary : theme.colorScheme.tertiary,
            ),
          ),
        ),
      ),
    );
  }
}
