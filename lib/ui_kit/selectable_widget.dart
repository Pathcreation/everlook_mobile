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
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            width: 1,
            color: theme.colorScheme.secondary,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data?.name ?? 'Select value',
              style: theme.textTheme.headlineMedium!.copyWith(
                color: data != null ? theme.colorScheme.tertiary : theme.colorScheme.secondary,
              ),
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
            ),
            ...List.generate(
              widget.items.length,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: index != (widget.items.length - 1) ? 12 : 0),
                  child: AppButton(
                    color: data == widget.items[index] ? theme.colorScheme.primary : theme.colorScheme.primary.withOpacity(0.3),
                    title: widget.items[index].name ?? '',
                    onPressed: () {
                      setState(() {
                        data = widget.items[index];
                      });
                      widget.onPressed(data);
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
