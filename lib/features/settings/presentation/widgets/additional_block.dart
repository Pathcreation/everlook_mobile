import 'package:everlook_mobile/source/imports.dart';

class AdditionalBlock extends StatelessWidget {
  const AdditionalBlock({
    super.key,
    required this.headeTextController,
    required this.contentTextController,
    required this.onDelete,
  });

  final TextEditingController headeTextController;
  final TextEditingController contentTextController;
  final Function() onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          height: 33,
          thickness: 1,
        ),
        AppTextField(
          hintText: 'Additional Header',
          textController: headeTextController,
        ),
        const SizedBox(
          height: 10,
        ),
        AppTextField(
          maxHeight: 136,
          hintText: 'Additional Content block',
          textController: contentTextController,
        ),
        const SizedBox(
          height: 10,
        ),
        AppButton(
          title: 'Delete block',
          titlePadding: 0,
          width: 120,
          color: theme.colorScheme.secondary,
          onPressed: onDelete,
        ),
      ],
    );
  }
}
