/// List of all the paths that are used in navigation.
///
/// Have to been filled with the entries like this:
/// ```dart
/// /// Path description.
/// static const String flowPath = 'flowPath';
/// ```
abstract class AppRoutePaths {
  /// Path to home screen.
  static const main = '/';
  static const auth = '/auth';
  static const home = 'home';
  static const profile = 'profile';
}
