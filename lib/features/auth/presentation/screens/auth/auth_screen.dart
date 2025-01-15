import 'package:everlook_mobile/features/auth/presentation/widgets/client_sign_in.dart';
import 'package:everlook_mobile/features/auth/presentation/widgets/create_account_client.dart';
import 'package:everlook_mobile/features/auth/presentation/widgets/create_account_pro.dart';
import 'package:everlook_mobile/features/auth/presentation/widgets/pro_sign_in.dart';
import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'auth_wm.dart';

/// {@template auth_screen.class}
/// AuthScreen.
/// {@endtemplate}
class AuthScreen extends ElementaryWidget<IAuthWM> {
  /// {@macro auth_screen.class}
  const AuthScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultAuthWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IAuthWM wm) {
    return UnionStateListenableBuilder(
      unionStateListenable: wm.state,
      loadingBuilder: (_, __) => const Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      failureBuilder: (_, ex, ___) {
        print('ERROR: $ex');
        return Text(
          ex.toString(),
        );
      },
      builder: (context, data) {
        if (data) {
          context.pushRoute(const HomeRoute());
        }
        return Column(
          children: [
            Container(
              height: 210,
              width: double.infinity,
              color: wm.colorScheme.tertiary,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'EVERLOOK',
                    style: wm.textScheme.headlineLarge!.copyWith(
                      color: wm.colorScheme.surface,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4,
                  vertical: 8,
                ),
                child: UnionStateListenableBuilder(
                    unionStateListenable: wm.authState,
                    loadingBuilder: (_, __) => const SizedBox(),
                    failureBuilder: (_, ex, ___) => const SizedBox(),
                    builder: (context, authState) {
                      return authState.maybeMap(
                        orElse: () => const SizedBox(),
                        signInClient: () {
                          return ClientSignIn(wm: wm);
                        },
                        signInPro: () {
                          return ProSignIn(wm: wm);
                        },
                        createAccountClient: () {
                          return CreateAccountClient(wm: wm);
                        },
                        createAccountPro: () {
                          return CreateAccountPro(wm: wm);
                        },
                      );
                    }),
              ),
            ),
          ],
        );
      },

    );
  }
}
