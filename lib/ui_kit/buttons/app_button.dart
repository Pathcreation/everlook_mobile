import 'package:everlook_mobile/source/imports.dart';

/// standart button
class AppButton extends StatefulWidget {
  const AppButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isDisabled = false,
    this.isVibrate = false,
    this.height = 44,
    this.width = 300,
    this.textColor,
    this.color = AppColors.background,
    this.fontSize = 16,
    this.borderRadius = 35,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final double height;
  final double width;
  final bool isDisabled;
  final bool isVibrate;
  final Color? textColor;
  final Color color;
  final double fontSize;
  final double borderRadius;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (!widget.isDisabled) {
          widget.onPressed();
        }
      },
      onHighlightChanged: (value) {
        if (value) {
          setState(() {
            isPressed = true;
          });
        } else {
          setState(() {
            isPressed = false;
          });
        }
      },
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: LayoutBuilder(builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 0),
            child: Center(
              child: widget.textColor == null
                  ? ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) => gradientButton.createShader(
                  Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                ),
                child: AnimatedScale(
                  scale: isPressed ? 0.95 : 1,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: Text(
                    widget.title,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(
                      fontSize: widget.fontSize,
                      color: widget.textColor,
                      fontWeight: FontWeight.normal,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
                  : Text(
                widget.title,
                style:
                Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: widget.fontSize,
                  color: widget.textColor,
                  fontWeight: FontWeight.normal,
                ),
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        }),
      ),
    );
  }
}
