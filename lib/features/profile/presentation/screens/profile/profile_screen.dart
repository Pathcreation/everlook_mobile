import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/profile/presentation/screens/profile/profile_wm.dart';
import 'package:everlook_mobile/source/localizations.dart';
import 'package:everlook_mobile/ui_kit/selectable_widget.dart';
import 'package:everlook_mobile/ui_kit/avatar_widget.dart';
import 'package:everlook_mobile/ui_kit/custom_appbar.dart';

/// {@template profile_screen.class}
/// ProfileScreen.
/// {@endtemplate}
class ProfileScreen extends ElementaryWidget<IProfileWM> {
  /// {@macro profile_screen.class}
  const ProfileScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultProfileWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IProfileWM wm) {
    return UnionStateListenableBuilder(
      unionStateListenable: wm.user,
      builder: (context, user) {
        return Column(
          children: [
            const CustomAppBar(
              title: AppLocale.profile,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    AppAvatar(
                      imageId: user?.avatar ?? '',
                      size: 112,
                      isEdit: true,
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '${user?.name ?? 'Your name'} ${user?.lastName ?? 'and last name'}',
                        style: wm.textScheme.headlineLarge!.copyWith(
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '${user?.viewsMonth ?? '0'} ${AppLocale.profileViewsPerMonth}',
                      style: wm.textScheme.bodyMedium!.copyWith(
                        color: wm.colorScheme.secondary,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: wm.colorScheme.scrim,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        RichText(
                          text: TextSpan(
                            text: '${user?.rating ?? '0.0'} ',
                            style: wm.textScheme.bodyMedium!.copyWith(
                              color: wm.colorScheme.tertiary,
                              fontWeight: FontWeight.w500,
                            ),
                            children: [
                              TextSpan(
                                text: '(${user?.reviewsCount ?? '0'} ${AppLocale.reviews})',
                                style: wm.textScheme.bodyMedium!.copyWith(
                                  color: wm.colorScheme.secondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 28,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocale.workAs,
                            style: wm.textScheme.headlineMedium,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: SelectableWidget(
                            title: AppLocale.workAs,
                            onPressed: (value) {
                              if (value != null) {
                                wm.changeWorkAs(value.name ?? 'Private Constructor');
                                Navigator.pop(context);
                              }
                            },
                            data: ItemModel(
                              name: user?.workAs,
                            ),
                            items: const [
                              ItemModel(
                                name: 'Private Constructor',
                              ),
                              ItemModel(
                                name: 'Company',
                              ),
                              ItemModel(
                                name: 'Handy Man',
                              ),
                              ItemModel(
                                name: 'Beer Man',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocale.person,
                            style: wm.textScheme.headlineMedium,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: RichText(
                            text: TextSpan(
                              text: user?.personalId ?? '123456',
                              style: wm.textScheme.bodyMedium,
                              children: [
                                TextSpan(
                                  text: ' Emirates ID',
                                  style: wm.textScheme.headlineMedium!.copyWith(
                                    color: wm.colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            AppLocale.license,
                            style: wm.textScheme.headlineMedium,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 7,
                                child: AppTextField(
                                  minHeight: 38,
                                  textAlign: TextAlign.center,
                                  textController: wm.licenseTextController,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 10,
                                child: AppButton(
                                  height: 36,
                                  title: 'Change License',
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: wm.colorScheme.outline,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text('data'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Divider(),
                    const SizedBox(
                      height: 40,
                    ),
                    AppButton(
                      title: 'Logout',
                      onPressed: () async {
                        await wm.logout();
                      },
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      loadingBuilder: (_, __) => const CircularProgressIndicator(),
      failureBuilder: (_, ex, ___) => Text(ex?.toString() ?? 'Error'),
    );
  }
}
