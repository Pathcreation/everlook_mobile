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
    this.titlePadding = 20,
    this.leftIcon,
    this.rigthIcon,
    this.borderRadius,
    this.mainAxisAlignment = MainAxisAlignment.center,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final double height;
  final double? width;
  final bool isDisabled;
  final Color? textColor;
  final Color? color;
  final double fontSize;
  final String? leftIcon;
  final String? rigthIcon;
  final MainAxisAlignment mainAxisAlignment;
  final double titlePadding;
  final double? borderRadius;

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
        padding: const WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: 16,
          ),
        ),
        shape: widget.borderRadius != null
            ? WidgetStatePropertyAll<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(widget.borderRadius!),
                ),
              )
            : null,
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
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: widget.mainAxisAlignment,
          children: [
            if (widget.leftIcon != null)
              SvgPicture.asset(
                widget.leftIcon!,
              ),
            Padding(
              padding: EdgeInsets.only(
                left: widget.leftIcon != null ? 10 : widget.titlePadding,
              ),
              child: Text(
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
            ),
            if (widget.rigthIcon != null) const Spacer(),
            if (widget.rigthIcon != null)
              Padding(
                padding: const EdgeInsets.only(
                  right: 16,
                ),
                child: SvgPicture.asset(
                  widget.rigthIcon!,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
