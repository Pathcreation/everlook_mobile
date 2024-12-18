import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/navigation/app_scaffold.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/settings/di/settings_scope.dart';

import 'screens/settings/settings_screen.dart';

/// {@template profile_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class SettingsFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro profile_flow.class}
  const SettingsFlow({super.key});

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
      child: SettingsScreen(),
    );
  }
}
