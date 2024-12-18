import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/auth/di/auth_scope.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_screen.dart';

/// {@template auth_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class AuthFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro auth_flow.class}
  const AuthFlow({
    super.key,
    required this.onResult,
  });

  final Function(bool) onResult;

  @override
  Widget wrappedRoute(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return DiScope<IAuthScope>(
      factory: (context) => AuthScope(appScope: appScope),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AuthScreen();
  }
}
