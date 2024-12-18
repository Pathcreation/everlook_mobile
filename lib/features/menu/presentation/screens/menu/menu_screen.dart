import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_wm.dart';
import 'package:everlook_mobile/ui_kit/rating_widget.dart';

/// {@template menu_screen.class}
/// MenuScreen.
/// {@endtemplate}
class MenuScreen extends ElementaryWidget<IMenuWM> {
  /// {@macro menu_screen.class}
  const MenuScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultMenuWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IMenuWM wm) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: UnionStateListenableBuilder(
          unionStateListenable: wm.user,
          loadingBuilder: (_, __) => const CircularProgressIndicator(),
          failureBuilder: (_, ex, ___) => Text(ex?.toString() ?? 'Error'),
          builder: (context, user) {
            return Column(
              children: [
                Row(
                  children: [
                    AppAvatar(
                      user: user,
                      size: 73,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '${user?.name ?? ''} ${user?.lastName ?? ''}',
                                ),
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              RatingWidget(rating: user?.rating ?? 0.0),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${user?.viewsMonth ?? '0'} ${AppLocale.profileViewsPerMonth}',
                            style: wm.textScheme.bodySmall!.copyWith(
                              color: wm.colorScheme.tertiaryFixed,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            'Balance 299 AED',
                            style: wm.textScheme.bodySmall!.copyWith(
                              color: wm.colorScheme.tertiaryFixed,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                AppButton(
                  title: 'Search a Job',
                  rigthIcon: Assets.icons.newJobForeground,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 18,
                ),
                ListTile(
                  onTap: wm.pressJobs,
                  trailing: SvgPicture.asset(
                    Assets.icons.jobs,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Jobs'),
                ),
                ListTile(
                  onTap: wm.pressInProgress,
                  trailing: SvgPicture.asset(
                    Assets.icons.inProgress,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('In Progress'),
                ),
                if (user?.isStaff ?? false)
                  ListTile(
                    onTap: wm.pressCanceled,
                    trailing: SvgPicture.asset(
                      Assets.icons.canceled,
                      color: wm.colorScheme.secondary,
                    ),
                    title: const Text('Canceled'),
                  ),
                ListTile(
                  onTap: wm.pressFinished,
                  trailing: SvgPicture.asset(
                    Assets.icons.finished,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Finished'),
                ),
                const Divider(),
                ListTile(
                  onTap: wm.pressOffers,
                  trailing: SvgPicture.asset(
                    Assets.icons.offers,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Offers'),
                ),
                if (user?.isStaff ?? false)
                  ListTile(
                    onTap: wm.pressOfferRequest,
                    trailing: SvgPicture.asset(
                      Assets.icons.offerRequest,
                      color: wm.colorScheme.secondary,
                    ),
                    title: const Text('Offer Request'),
                  ),
                if (user?.isStaff ?? false)
                  ListTile(
                    onTap: wm.pressMyOffers,
                    trailing: SvgPicture.asset(
                      Assets.icons.myOffers,
                      color: wm.colorScheme.secondary,
                    ),
                    title: const Text('My Offers'),
                  ),
                if (user?.isStaff ?? false)
                  ListTile(
                    onTap: wm.pressRejected,
                    trailing: SvgPicture.asset(
                      Assets.icons.rejected,
                      color: wm.colorScheme.secondary,
                    ),
                    title: const Text('Rejected'),
                  ),
                const Divider(),
                if (user?.isStaff ?? false)
                  ListTile(
                    onTap: wm.pressFavorites,
                    trailing: SvgPicture.asset(
                      Assets.icons.favorites,
                      color: wm.colorScheme.secondary,
                    ),
                    title: const Text('Favorites'),
                  ),
                ListTile(
                  onTap: wm.pressReviews,
                  trailing: SvgPicture.asset(
                    Assets.icons.reviews,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Reviews'),
                ),
                ListTile(
                  onTap: wm.pressSupport,
                  trailing: SvgPicture.asset(
                    Assets.icons.support,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Support'),
                ),
                const Divider(),
                ListTile(
                  onTap: wm.pressSettings,
                  trailing: SvgPicture.asset(
                    Assets.icons.favorites,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Settings'),
                ),
                ListTile(
                  onTap: () {
                    wm.pressProfile();
                  },
                  trailing: SvgPicture.asset(
                    Assets.icons.profile,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Profile'),
                ),
                ListTile(
                  onTap: wm.pressActivities,
                  trailing: SvgPicture.asset(
                    Assets.icons.activities,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Activities'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  onTap: wm.pressSignOut,
                  trailing: SvgPicture.asset(
                    Assets.icons.signOut,
                    color: wm.colorScheme.secondary,
                  ),
                  title: const Text('Sign Out'),
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            );
          }),
    );
  }
}
