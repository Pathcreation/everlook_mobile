import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// App launch.
Future<void> run(Environment env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  if (env.firebaseOptions != null) {
    await Firebase.initializeApp(options: env.firebaseOptions!);
  }

  // TODO(init-project): Change as needed or remove.
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await _runApp(env);
}

Future<void> _runApp(Environment env) async {
  const scopeRegister = AppScopeRegister();
  final scope = await scopeRegister.createScope(env);

  runApp(AppMain(appScope: scope));
}

// ignore: unused_element
// void _setupCrashlytics() {
//   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
//   PlatformDispatcher.instance.onError = (error, stack) {
//     FirebaseCrashlytics.instance
//         .recordError(error, stack, fatal: true)
//         .ignore();
//     return true;
//   };
// }
