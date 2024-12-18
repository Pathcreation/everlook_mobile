import 'package:everlook_mobile/common/widgets/di_scope.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'app_material.dart';

/// {@template app_flow.class}
/// Entry point for the application.
/// {@endtemplate}
class AppMain extends StatelessWidget {
  /// {@macro app_flow.class}
  const AppMain({
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
      ],
      child: const AppMaterial(),
    );
  }
}
