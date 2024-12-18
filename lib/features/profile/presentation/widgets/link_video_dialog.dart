import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';

class LinkVideoDialog extends StatefulWidget {
  const LinkVideoDialog({
    super.key,
    required this.onSave,
  });

  final Function(String) onSave;

  @override
  State<LinkVideoDialog> createState() => _LinkVideoDialogState();
}

class _LinkVideoDialogState extends State<LinkVideoDialog> {
  final TextEditingController linkTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: theme.colorScheme.inversePrimary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Add a link to a youtube video',
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(
              height: 16,
            ),
            AppTextField(
              hintText: 'YouTube link',
              textController: linkTextController,
            ),
            const SizedBox(
              height: 16,
            ),
            AppButton(
              title: 'Save',
              width: double.infinity,
              titlePadding: 0,
              onPressed: () {
                Navigator.pop(context, true);
                widget.onSave(linkTextController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
