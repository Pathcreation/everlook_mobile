import 'package:everlook_mobile/source/imports.dart';

import 'package:flutter/material.dart';

class SelectableWidget extends StatelessWidget {
  const SelectableWidget({
    required this.title,
    required this.onPressed,
    required this.data,
    required this.items,
    super.key,
  });

  final String title;
  final Function(ItemModel?) onPressed;
  final ItemModel? data;
  final List<ItemModel> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        showSelectableDialog(
          context: context,
          title: title,
          onPressed: onPressed,
          data: data,
          items: items,
        );
      },
      child: Container(
        height: 34,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: theme.colorScheme.onPrimary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data?.name ?? 'Select value',
              style: theme.textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.normal,
                color: data != null ? theme.colorScheme.primary : theme.colorScheme.secondary,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset(
              Assets.icons.arrowDownBlueIcon,
              width: 12,
            ),
          ],
        ),
      ),
    );
  }
}

void showSelectableDialog({
  required BuildContext context,
  required String title,
  required Function(ItemModel?) onPressed,
  required ItemModel? data,
  required List<ItemModel> items,
}) {
  showDialog(
    context: context,
    builder: (ctx) {
      return SelectableDialog(
        title: title,
        onPressed: onPressed,
        data: data,
        items: items,
      );
    },
  );
}

class SelectableDialog extends StatefulWidget {
  const SelectableDialog({
    required this.title,
    required this.onPressed,
    required this.data,
    required this.items,
    super.key,
  });

  final String title;
  final Function(ItemModel?) onPressed;
  final ItemModel? data;
  final List<ItemModel> items;

  @override
  State<SelectableDialog> createState() => _SelectableDialogState();
}

class _SelectableDialogState extends State<SelectableDialog> {
  ItemModel? data;

  @override
  void initState() {
    data = widget.data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.title,
              style: theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 14,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: AppButton(
                color: theme.colorScheme.primary,
                title: 'Select type',
                width: double.infinity,
                textColor: theme.colorScheme.primary,
                onPressed: () {
                  setState(() {
                    data = null;
                  });
                  widget.onPressed(data);
                  Navigator.pop(context, true);
                },
              ),
            ),
            ...List.generate(
              widget.items.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: index != (widget.items.length - 1) ? 12 : 0),
                  child: AppButton(
                    width: double.infinity,
                    color: data == widget.items[index] ? theme.colorScheme.primary : theme.colorScheme.primary.withOpacity(0.3),
                    title: widget.items[index].name ?? '',
                    titlePadding: 0,
                    onPressed: () {
                      setState(() {
                        data = widget.items[index];
                      });
                      widget.onPressed(data);
                      Navigator.pop(context, true);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
