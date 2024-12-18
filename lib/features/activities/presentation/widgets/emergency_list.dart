import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/features/activities/presentation/widgets/activities_body.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'activities_widget.dart';

class EmergencyList extends StatelessWidget {
  const EmergencyList({
    super.key,
    required this.title,
    required this.emergencyActivitiesNotifier,
    required this.onExpand,
    required this.onActive,
    required this.acceptedTermsNotifier,
    required this.onAcceptTerms,
    required this.onClose,
    required this.onBack,
    required this.onOpenTerms,
  });

  final String title;
  final UnionStateNotifier<List<ActivityEntity>> emergencyActivitiesNotifier;
  final UnionStateNotifier<bool> acceptedTermsNotifier;
  final Function(int index, int parent) onExpand;
  final Function(int index, ActivityEntity activity) onActive;
  final Function() onAcceptTerms;
  final Function() onClose;
  final Function() onBack;
  final Function() onOpenTerms;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return UnionStateListenableBuilder(
        unionStateListenable: emergencyActivitiesNotifier,
        loadingBuilder: (_, emergencyActivities) => const SizedBox(),
        failureBuilder: (_, ex, ___) => const SizedBox(),
        builder: (context, emergencyActivities) {
          return UnionStateListenableBuilder(
              unionStateListenable: acceptedTermsNotifier,
              loadingBuilder: (_, selectedActivities) => const SizedBox(),
              failureBuilder: (_, ex, ___) => const SizedBox(),
              builder: (context, acceptedTerms) {
                return ActivitiesBody(
                  title: title,
                  onBack: onBack,
                  children: [
                    ElementContainer(
                      children: [
                        Text(
                          'Terms of Emergency Response',
                          style: theme.textTheme.labelMedium,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        AppButton(
                          title: 'Read',
                          titlePadding: 0,
                          width: double.infinity,
                          onPressed: onOpenTerms,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                onAcceptTerms();
                              },
                              child: Container(
                                height: 34,
                                width: 34,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: acceptedTerms ? theme.colorScheme.primary : theme.colorScheme.onPrimary,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: acceptedTerms
                                    ? SvgPicture.asset(
                                        Assets.icons.checkWhiteIcon,
                                      )
                                    : const SizedBox(),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                'Accept Terms of Emergency Response',
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    if (emergencyActivities.isNotEmpty && emergencyActivities.first.activeCount > 0)
                      ActivitiesWidget(
                        title: 'Add Activities',
                        isEmergency: true,
                        activities: emergencyActivities,
                        onExpand: onExpand,
                        onActive: onActive,
                      ),
                  ],
                );
              });
        });
  }
}
