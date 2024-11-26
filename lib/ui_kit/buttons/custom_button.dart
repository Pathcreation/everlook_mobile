import 'package:everlook_mobile/source/imports.dart';

import 'app_button.dart';

/// standart button
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.isDisabled = false,
    this.height = 46,
    this.width,
    this.textColor,
    this.fontSize = 16,
    this.icon,
  }) : super(key: key);

  final Function() onPressed;
  final String title;
  final double height;
  final double? width;
  final bool isDisabled;
  final Color? textColor;
  final double fontSize;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Stack(
        children: [
          CustomIcons.buttonArrow(
            size: Size(
              width ?? double.infinity,
              height,
            ),
          ),
          AppButton(
            title: title,
            onPressed: onPressed,
            height: height,
            width: width,
            isDisabled: isDisabled,
            textColor: textColor,
            color: Colors.transparent,
            fontSize: fontSize,
            icon: icon,
          ),
        ],
      ),
    );
  }
}
