import 'package:everlook_mobile/source/imports.dart';

import 'cs_logo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
    this.fps = 30,
  }) : super(key: key);

  final double fps;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.background,
        child: Center(
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width / 2,
            child: CsLogo(
              fps: fps,
            ),
          ),
        ),
      ),
    );
  }
}
