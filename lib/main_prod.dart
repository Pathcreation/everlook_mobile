import 'package:everlook_mobile/config/environment/build_type.dart';
import 'package:everlook_mobile/config/environment/environment.dart';
import 'package:everlook_mobile/runner.dart';

/// Main entry point of app.
void main() {
  run(const Environment(buildType: BuildType.prod)).ignore();
}
