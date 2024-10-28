import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/app_scaffold/app_scaffold_view_model.dart';

import 'app_material.dart';

/// {@template app_flow.class}
/// Entry point for the application.
/// {@endtemplate}
class AppFlow extends StatelessWidget {
  /// {@macro app_flow.class}
  const AppFlow({
    required this.appScope,
    super.key,
  });

  /// {@macro app_scope.class}
  final IAppScope appScope;

  @override
  Widget build(BuildContext context) {
    return Nested(
      children: [
        DiScope<IAppScope>(factory: (_) => appScope),
        ChangeNotifierProvider<AppScaffoldViewModel>(
          create: (_) => AppScaffoldViewModel(),
        ),
      ],
      child: const AppMaterial(),
    );
  }
}
