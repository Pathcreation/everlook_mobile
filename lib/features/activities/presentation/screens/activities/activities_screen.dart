import 'package:everlook_mobile/features/activities/presentation/widgets/activities_body.dart';
import 'package:everlook_mobile/features/activities/presentation/widgets/activities_widget.dart';
import 'package:everlook_mobile/features/activities/presentation/widgets/emergency_list.dart';
import 'package:everlook_mobile/features/activities/presentation/widgets/price_activities_body.dart';
import 'package:everlook_mobile/features/activities/presentation/widgets/terms_widget.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_wm.dart';

/// {@template activities_screen.class}
/// ActivitiesScreen.
/// {@endtemplate}
class ActivitiesScreen extends ElementaryWidget<IActivitiesWM> {
  /// {@macro activities_screen.class}
  const ActivitiesScreen({
    super.key,
    WidgetModelFactory wmFactory = defaultActivitiesWMFactory,
  }) : super(wmFactory);

  @override
  Widget build(IActivitiesWM wm) {
    return UnionStateListenableBuilder(
        unionStateListenable: wm.state,
        loadingBuilder: (_, activityState) => const CircularProgressIndicatorWidget(),
        failureBuilder: (_, ex, ___) {
          if (ex != null) {
            showMessage(
              message: ex.toString(),
              type: PageState.error,
            );
          }

          return _Body(wm: wm);
        },
        builder: (context, state) {
          return _Body(wm: wm);
        });
  }
}

class _Body extends StatelessWidget {
  const _Body({super.key, required this.wm});

  final IActivitiesWM wm;

  @override
  Widget build(BuildContext context) {
    return UnionStateListenableBuilder(
        unionStateListenable: wm.activityState,
        loadingBuilder: (_, activityState) => const CircularProgressIndicatorWidget(),
        failureBuilder: (_, ex, ___) => const SizedBox(),
        builder: (context, activityState) {
          return activityState.maybeMap(
            orElse: () => const SizedBox(),
            priceActivities: () {
              return PriceActivitiesBody(
                priceActivities: wm.activities,
                user: wm.user,
                onMeasure: (index, activity, value) {
                  wm.onMeasure(
                    index: index,
                    activity: activity,
                    value: value,
                  );
                },
                changeActivityState: (state) {
                  wm.changeActivityState(state);
                },
                onSave: wm.save,
              );
            },
            emergency: () {
              return EmergencyList(
                title: AppLocale.activities,
                onBack: () {
                  wm.changeActivityState(ActivityState.priceActivities);
                },
                onOpenTerms: () {
                  wm.changeActivityState(ActivityState.terms);
                },
                emergencyActivitiesNotifier: wm.activities,
                acceptedTermsNotifier: wm.acceptedTerms,
                onExpand: (index, parent) {
                  wm.expandActivity(
                    index: index,
                    parent: parent,
                  );
                },
                onActive: (index, activity) {
                  wm.onActiveEmergency(
                    index: index,
                    activity: activity,
                  );
                },
                onAcceptTerms: () {
                  wm.acceptTermsOfEmergency();
                },
                onClose: () {
                  wm.changeActivityState(ActivityState.priceActivities);
                },
              );
            },
            activities: () {
              return ActivitiesBody(
                title: AppLocale.addActivities,
                onBack: () {
                  wm.changeActivityState(ActivityState.priceActivities);
                },
                children: [
                  UnionStateListenableBuilder(
                      unionStateListenable: wm.activities,
                      loadingBuilder: (_, activities) => Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              ActivitiesWidget(
                                activities: activities ?? [],
                              ),
                              const Padding(
                                padding: EdgeInsets.all(16),
                                child: SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicatorWidget(),
                                ),
                              ),
                            ],
                          ),
                      failureBuilder: (_, ex, ___) => const SizedBox(),
                      builder: (context, activities) {
                        return ActivitiesWidget(
                          activities: activities,
                          onExpand: (index, parent) {
                            wm.expandActivity(
                              index: index,
                              parent: parent,
                            );
                          },
                          onActive: (index, activity) {
                            wm.onActive(
                              index: index,
                              activity: activity,
                            );
                          },
                        );
                      }),
                ],
              );
            },
            terms: () {
              return TermsWidget(
                title: 'Terms of Emergency Response',
                terms: wm.terms,
                onBack: () {
                  wm.changeActivityState(ActivityState.emergency);
                },
              );
            },
          );
        });
  }
}
