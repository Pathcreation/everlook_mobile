import 'package:everlook_mobile/navigation/app_scaffold.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/activities/di/activities_scope.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_screen.dart';

/// {@template activities_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class ActivitiesFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro activities_flow.class}
  const ActivitiesFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final appScope = context.read<IAppScope>();

    return DiScope<IActivitiesScope>(
      factory: (context) => ActivitiesScope(appScope),
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: ActivitiesScreen(),
    );
  }
}
