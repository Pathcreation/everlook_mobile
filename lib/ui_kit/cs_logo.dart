import 'package:everlook_mobile/source/imports.dart';

class CsLogo extends StatefulWidget {
  const CsLogo({Key? key, this.fps = 30}) : super(key: key);

  final double fps;

  @override
  State<CsLogo> createState() => _CsLogoState();
}

class _CsLogoState extends State<CsLogo> {

  @override
  Widget build(BuildContext context) {
    return SizedBox();
    // return Assets.launchIcons.logo.image();
  }
}
