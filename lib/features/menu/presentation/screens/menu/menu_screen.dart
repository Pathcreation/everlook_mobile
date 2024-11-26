import 'package:elementary/elementary.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter/material.dart';
import 'package:everlook_mobile/features/menu/presentation/screens/menu/menu_wm.dart';

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
      child: Column(
        children: [
          ListTile(
            onTap: wm.pressJobs,
            leading: SvgPicture.asset(Assets.icons.jobs),
            title: Text(
              'Jobs',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressInProgress,
            leading: SvgPicture.asset(Assets.icons.inProgress),
            title: Text(
              'In Progress',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressCanceled,
            leading: SvgPicture.asset(Assets.icons.canceled),
            title: Text(
              'Canceled',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressFinished,
            leading: SvgPicture.asset(Assets.icons.finished),
            title: Text(
              'Finished',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: wm.pressOffers,
            leading: SvgPicture.asset(Assets.icons.offers),
            title: Text(
              'Offers',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressOfferRequest,
            leading: SvgPicture.asset(Assets.icons.offerRequest),
            title: Text(
              'Offer Request',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressMyOffers,
            leading: SvgPicture.asset(Assets.icons.myOffers),
            title: Text(
              'My Offers',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressRejected,
            leading: SvgPicture.asset(Assets.icons.rejected),
            title: Text(
              'Rejected',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: wm.pressFavorites,
            leading: SvgPicture.asset(Assets.icons.favorites),
            title: Text(
              'Favorites',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressReviews,
            leading: SvgPicture.asset(Assets.icons.reviews),
            title: Text(
              'Reviews',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressSupport,
            leading: SvgPicture.asset(Assets.icons.support),
            title: Text(
              'Support',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          const Divider(),
          ListTile(
            onTap: wm.pressSettings,
            leading: SvgPicture.asset(Assets.icons.favorites),
            title: Text(
              'Settings',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressProfile,
            leading: SvgPicture.asset(Assets.icons.profile),
            title: Text(
              'Profile',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          ListTile(
            onTap: wm.pressActivities,
            leading: SvgPicture.asset(Assets.icons.activities),
            title: Text(
              'Activities',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: wm.pressSignOut,
            leading: SvgPicture.asset(Assets.icons.signOut),
            title: Text(
              'Sign Out',
              style: wm.textScheme.bodyMedium,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
