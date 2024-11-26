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
      builder: (context, data) {
        if (data) {
          context.pushRoute(const MainRoute());
        }
        return SingleChildScrollView(
          child: Column(
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
                    Text(
                      'Client Sign In',
                      style: wm.textScheme.bodyMedium!.copyWith(
                        color: wm.colorScheme.surface,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    AppTextField(
                      minHeight: 56,
                      hintText: 'Email address',
                      textController: wm.emailTextController,
                      prefix: SvgPicture.asset(
                        Assets.icons.email,
                        width: 24,
                      ),
                      prefixConstraints: const BoxConstraints(
                        maxWidth: 48,
                        minWidth: 48,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    AppTextField(
                      minHeight: 56,
                      labelText: 'Password',
                      hintText: 'Password',
                      textController: wm.passwordTextController,
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    AppButton(
                      title: 'Sign In',
                      onPressed: () async {
                        await wm.login(
                          email: wm.emailTextController.text,
                          password: wm.passwordTextController.text,
                        );
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Password Recovery\n',
                        style: wm.textScheme.bodyMedium!.copyWith(
                          color: wm.colorScheme.primary,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                        children: [
                          TextSpan(
                            text: 'New customer? ',
                            style: wm.textScheme.bodyMedium!.copyWith(
                              color: wm.colorScheme.tertiary,
                            ),
                          ),
                          TextSpan(
                            text: 'Create an Account',
                            style: wm.textScheme.bodyMedium!.copyWith(
                              color: wm.colorScheme.primary,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    AppButton(
                      textColor: wm.colorScheme.tertiary,
                      color: wm.colorScheme.onSecondary,
                      icon: Assets.icons.googleLogo,
                      title: 'Continue with Google',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    AppButton(
                      textColor: wm.colorScheme.tertiary,
                      color: wm.colorScheme.onSecondary,
                      icon: Assets.icons.facebookLogo,
                      title: 'Sign in with Facebook',
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 52,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Looking for leads?\n',
                        style: wm.textScheme.bodyMedium!.copyWith(
                          color: wm.colorScheme.tertiary,
                        ),
                        children: [
                          TextSpan(
                            text: 'Create a Professional Account',
                            style: wm.textScheme.bodyMedium!.copyWith(
                              color: wm.colorScheme.primary,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
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
    );
  }
}
