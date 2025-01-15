import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/recovery_password/presentation/screens/recovery_password/recovery_password_wm.dart';

/// {@template recovery_password_screen.class}
/// RecoveryPasswordScreen.
/// {@endtemplate}
class RecoveryPasswordScreen extends ElementaryWidget<IRecoveryPasswordWM> {
  /// {@macro recovery_password_screen.class}
  const RecoveryPasswordScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultRecoveryPasswordWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IRecoveryPasswordWM wm) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 192,
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
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
              vertical: 8,
            ),
            child: Material(
              color: Colors.transparent,
              child: UnionStateListenableBuilder(
                  unionStateListenable: wm.state,
                  loadingBuilder: (_, state) => const CircularProgressIndicatorWidget(),
                  failureBuilder: (_, ex, ___) => const SizedBox(),
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => const SizedBox(),
                      sendEmail: () {
                        return ElementContainer(
                          children: [
                            Text(
                              AppLocale.passwordRecovery,
                              style: wm.textScheme.headlineMedium!,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            labelText(
                              context,
                              AppLocale.emailAddress,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            AppTextField(
                              minHeight: 56,
                              hintText: 'Email address',
                              textController: wm.emailTextController,
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            AppButton(
                              title: 'Send Recovery Link',
                              width: double.infinity,
                              titlePadding: 0,
                              onPressed: wm.sendRecoveryLink,
                            ),
                            if (wm.isAuthorized)
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: InkWell(
                                  onTap: wm.backToLogin,
                                  child: Text(
                                    AppLocale.backToLogin,
                                    style: wm.textScheme.bodyMedium!.copyWith(
                                      color: wm.colorScheme.primary,
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        );
                      },
                      savePassword: () {
                        return const SizedBox();
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget labelText(
    BuildContext context,
    String label,
  ) {
    final theme = Theme.of(context);
    return Text(
      label,
      style: theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.tertiaryFixed,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
