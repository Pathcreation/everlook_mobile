import 'package:everlook_mobile/navigation/app_scaffold.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/settings/di/settings_scope.dart';

import 'screens/profile/profile_screen.dart';

/// {@template settings_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class ProfileFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro settings_flow.class}
  const ProfileFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return DiScope<ISettingsScope>(
      factory: (context) => SettingsScope(appScope),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: ProfileScreen(),
    );
  }
}
