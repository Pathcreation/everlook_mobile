import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_model.dart';
import 'package:everlook_mobile/features/auth/presentation/screens/auth/auth_wm.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/ui_kit/app_radio.dart';

class CreateAccountClient extends StatelessWidget {
  const CreateAccountClient({
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
                  AppLocale.createAnAccount,
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
                  height: 14,
                ),
                Row(
                  children: [
                    UnionStateListenableBuilder(
                        unionStateListenable: wm.agreeTerms,
                        loadingBuilder: (_, __) => const SizedBox(),
                        failureBuilder: (_, ex, ___) => const SizedBox(),
                        builder: (context, agreeTerms) {
                          return AppRadio(
                            isActive: agreeTerms,
                            onTap: wm.changeAgreeTerms,
                          );
                        }),
                    const SizedBox(
                      width: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I agree to the ',
                        style: wm.textScheme.bodyMedium!.copyWith(
                          color: wm.colorScheme.tertiaryContainer,
                        ),
                        children: [
                          TextSpan(
                            text: 'Terms of Use',
                            style: wm.textScheme.bodyMedium!.copyWith(
                              color: wm.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                AppButton(
                  title: 'Create Free Account ',
                  width: double.infinity,
                  titlePadding: 0,
                  onPressed: () async {
                    await wm.login(
                      email: wm.emailTextController.text,
                      password: wm.passwordTextController.text,
                    );
                  },
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
            height: 52,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: RichText(
              text: TextSpan(
                text: 'Already have an account?\n',
                style: wm.textScheme.bodyMedium!.copyWith(
                  color: wm.colorScheme.tertiary,
                ),
                children: [
                  TextSpan(
                    text: 'Sign In',
                    style: wm.textScheme.bodyMedium!.copyWith(
                      color: wm.colorScheme.primary,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () => wm.changeAuthState(AuthState.signInClient),
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
