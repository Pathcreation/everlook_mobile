import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_model.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_wm.dart';
import 'package:everlook_mobile/source/imports.dart';

class ClientSignIn extends StatelessWidget {
  const ClientSignIn({
    super.key,
    required this.wm,
  });

  final IAuthWM wm;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            color: Colors.transparent,
            child: ElementContainer(
              children: [
                Text(
                  AppLocale.clientSignIn,
                  style: wm.textScheme.headlineMedium,
                ),
                const SizedBox(
                  height: 16,
                ),
                labelText(
                  context,
                  AppLocale.emailAddress,
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextField(
                  minHeight: 56,
                  hintText: 'Email address',
                  textController: wm.emailTextController,
                ),
                const SizedBox(
                  height: 16,
                ),
                labelText(
                  context,
                  AppLocale.password,
                ),
                const SizedBox(
                  height: 10,
                ),
                UnionStateListenableBuilder(
                    unionStateListenable: wm.isObscure,
                    loadingBuilder: (_, __) => const SizedBox(),
                    failureBuilder: (_, ex, ___) => const SizedBox(),
                    builder: (context, isObscure) {
                      return AppTextField(
                        hintText: 'Password',
                        textController: wm.passwordTextController,
                        obscureText: isObscure,
                        suffix: Padding(
                          padding: const EdgeInsets.only(right: 14),
                          child: InkWell(
                            onTap: wm.changeObscure,
                            child: SvgPicture.asset(
                              isObscure ? Assets.icons.eyeHide : Assets.icons.eye,
                              width: 23,
                            ),
                          ),
                        ),
                        suffixConstraints: const BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 37,
                        ),
                      );
                    }),
                const SizedBox(
                  height: 24,
                ),
                AppButton(
                  title: 'Sign In',
                  width: double.infinity,
                  titlePadding: 0,
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
                        recognizer: TapGestureRecognizer()..onTap = () => wm.changeAuthState(AuthState.createAccountClient),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          AppButton(
            textColor: wm.colorScheme.tertiaryFixed,
            color: wm.colorScheme.inversePrimary,
            leftIcon: Assets.icons.googleLogo,
            title: 'Continue with Google',
            width: double.infinity,
            titlePadding: 0,
            onPressed: () {},
          ),
          const SizedBox(
            height: 12,
          ),
          AppButton(
            textColor: wm.colorScheme.tertiaryFixed,
            color: wm.colorScheme.inversePrimary,
            leftIcon: Assets.icons.facebookLogo,
            title: 'Sign in with Facebook',
            width: double.infinity,
            titlePadding: 0,
            onPressed: () {},
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RichText(
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
                    recognizer: TapGestureRecognizer()..onTap = () => wm.changeAuthState(AuthState.createAccountPro),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
