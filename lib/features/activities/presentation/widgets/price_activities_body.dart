import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/features/activities/presentation/screens/activities/activities_wm.dart';
import 'package:everlook_mobile/features/activities/presentation/widgets/activities_body.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'price_activity_list.dart';

class PriceActivitiesBody extends StatelessWidget {
  const PriceActivitiesBody({
    super.key,
    required this.priceActivities,
    required this.onMeasure,
    required this.changeActivityState,
    required this.onSave,
    required this.user,
  });

  final UnionStateNotifier<List<ActivityEntity>> priceActivities;
  final UserModel? user;
  final Function(int, ActivityEntity, Units?) onMeasure;
  final Function(ActivityState) changeActivityState;
  final Function() onSave;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ActivitiesBody(
      title: AppLocale.activities,
      children: [
        AppButton(
          title: 'Edit Activities List',
          width: double.infinity,
          titlePadding: 0,
          onPressed: () {
            changeActivityState(ActivityState.activities);
          },
        ),
        UnionStateListenableBuilder(
            unionStateListenable: priceActivities,
            loadingBuilder: (_, selectedActivities) => Stack(
                  alignment: Alignment.center,
                  children: [
                    selectedActivities != null && selectedActivities.isNotEmpty && selectedActivities.first.activeCount > 0
                        ? ElementContainer(
                            children: [
                              Text(
                                'Activities Price in AED',
                                style: theme.textTheme.labelMedium,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              PriceActivityList(
                                activities: selectedActivities,
                              ),
                            ],
                          )
                        : const SizedBox(),
                    const CircularProgressIndicatorWidget(),
                  ],
                ),
            failureBuilder: (_, ex, ___) => const SizedBox(),
            builder: (context, selectedActivities) {
              return selectedActivities.isNotEmpty && selectedActivities.first.activeCount > 0
                  ? Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ElementContainer(
                        children: [
                          Text(
                            'Activities Price in AED',
                            style: theme.textTheme.labelMedium,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          selectedActivities.isNotEmpty
                              ? PriceActivityList(
                                  activities: selectedActivities,
                                  onMeasure: onMeasure,
                                )
                              : const SizedBox(),
                        ],
                      ),
                    )
                  : const SizedBox();
            }),
        const SizedBox(
          height: 8,
        ),
        GestureDetector(
          onTap: () {
            changeActivityState(ActivityState.emergency);
          },
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.onError.withOpacity(0.4),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Emergency Response ${(user?.emergencyResponse ?? false) ? 'Enabled' : 'Disabled'}',
                  style: theme.textTheme.headlineMedium!.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Emergency Response Disabled',
                  style: theme.textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.normal,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        AppButton(
          titlePadding: 0,
          title: 'Save changes',
          onPressed: onSave,
        ),
      ],
    );
  }
}
