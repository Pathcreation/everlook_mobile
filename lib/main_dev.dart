import 'package:everlook_mobile/config/environment/build_type.dart';
import 'package:everlook_mobile/config/environment/environment.dart';
import 'package:everlook_mobile/runner.dart';

import 'firebase_options.dart';

/// Main entry point of app.
void main() {
  run(Environment(
    buildType: BuildType.dev,
    firebaseOptions: DefaultFirebaseOptions.currentPlatform,
  )).ignore();
}
