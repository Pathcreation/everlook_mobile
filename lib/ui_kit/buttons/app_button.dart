import 'package:everlook_mobile/source/imports.dart';

/// standart button
class AppButton extends StatefulWidget {
  const AppButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isDisabled = false,
    this.height = 46,
    this.width,
    this.textColor,
    this.color,
    this.fontSize = 16,
    this.icon,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final double height;
  final double? width;
  final bool isDisabled;
  final Color? textColor;
  final Color? color;
  final double fontSize;
  final String? icon;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: theme.elevatedButtonTheme.style!.copyWith(
        backgroundColor: WidgetStatePropertyAll<Color>(
          widget.color ?? theme.colorScheme.primary,
        ),
        visualDensity: VisualDensity.compact,
      ),
      onPressed: () {
        if (!widget.isDisabled) {
          widget.onPressed();
        }
      },
      child: SizedBox(
        height: widget.height,
        width: widget.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.icon != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: 10,
                ),
                child: SvgPicture.asset(
                  widget.icon!,
                ),
              ),
            Text(
              widget.title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: widget.fontSize,
                    color: widget.textColor ?? theme.colorScheme.surface,
                    fontWeight: FontWeight.normal,
                  ),
              maxLines: 1,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
