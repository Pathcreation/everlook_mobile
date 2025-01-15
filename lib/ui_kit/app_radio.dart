import 'package:everlook_mobile/source/imports.dart';

class AppRadio extends StatelessWidget {
  const AppRadio({
    Key? key,
    required this.isActive,
    required this.onTap,
    this.size = 34,
    this.color,
  }) : super(key: key);

  final bool isActive;
  final Function() onTap;
  final double size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: color ?? theme.colorScheme.primary,
        ),
        child: isActive
            ? Center(
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: theme.colorScheme.inversePrimary,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
