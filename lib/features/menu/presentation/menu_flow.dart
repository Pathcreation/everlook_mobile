import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_screen.dart';

/// {@template menu_flow.class}
/// Entry point to feature .
/// {@endtemplate}
@RoutePage()
class MenuFlow extends StatelessWidget implements AutoRouteWrapper {
  /// {@macro menu_flow.class}
  const MenuFlow({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    final appScope = context.read<IAppScope>();
    return DiScope<IAppScope>(
      factory: (context) => appScope,
      onDispose: (scope) => scope.dispose(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return const MenuScreen();
  }
}
