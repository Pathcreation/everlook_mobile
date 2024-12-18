import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/source/imports.dart';

class ActivitiesWidget extends StatelessWidget {
  const ActivitiesWidget({
    super.key,
    required this.activities,
    this.isEmergency = false,
    this.onExpand,
    this.onActive,
    this.title,
  });

  final List<ActivityEntity> activities;
  final Function(int index, int parent)? onExpand;
  final Function(int index, ActivityEntity activity)? onActive;
  final bool isEmergency;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElementContainer(
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              title!,
              style: theme.textTheme.labelMedium,
            ),
          ),
        ...List.generate(
          activities.length,
          (index) {
            bool show = false;
            if (!isEmergency) {
              show = true;
            } else {
              if (activities[index].activeCount > 0) {
                show = true;
              }
            }
            return show
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          if (onExpand != null) {
                            onExpand!(index, activities[index].id!);
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 16,
                                width: 16,
                                child: SvgPicture.asset(
                                  activities[index].isExpanded ? Assets.icons.minusBlueIcon : Assets.icons.plusBlueIcon,
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Text(
                                  activities[index].name ?? '',
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              if (!isEmergency)
                                Text(
                                  ' ${activities[index].activeCount.toString() ?? ' '}/${activities[index].childCount?.toString() ?? ' '}',
                                  style: theme.textTheme.titleLarge!.copyWith(
                                    color: theme.colorScheme.tertiaryFixedDim,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      if (activities[index].isExpanded) const Divider(),
                      if (activities[index].children != null && activities[index].isExpanded)
                        ...List.generate(
                          activities[index].children!.length,
                          (idx) {
                            bool show = false;
                            if (isEmergency) {
                              if (activities[index].children![idx].isActive) {
                                show = true;
                              } else {
                                show = false;
                              }
                            } else {
                              show = true;
                            }
                            return show
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 10),
                                    child: Row(
                                      children: [
                                        FlutterSwitch(
                                          width: 34,
                                          height: 22,
                                          activeColor: isEmergency ? theme.colorScheme.onError : theme.colorScheme.primary,
                                          inactiveColor: theme.colorScheme.secondary,
                                          valueFontSize: 25.0,
                                          value: isEmergency ? activities[index].children![idx].isEmergency : activities[index].children![idx].isActive,
                                          borderRadius: 17,
                                          padding: 3,
                                          showOnOff: false,
                                          onToggle: (val) {
                                            if (onActive != null) {
                                              onActive!(index, activities[index].children![idx]);
                                            }
                                          },
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Text(
                                            activities[index].children![idx].name ?? '',
                                            style: theme.textTheme.titleMedium!.copyWith(
                                              color: isEmergency
                                                  ? theme.colorScheme.tertiary
                                                  : activities[index].children![idx].isActive
                                                      ? theme.colorScheme.primary
                                                      : theme.colorScheme.tertiaryFixed,
                                            ),
                                          ),
                                        ),
                                        if (!isEmergency && activities[index].children![idx].isEmergency)
                                          CircleAvatar(
                                            radius: 5,
                                            backgroundColor: theme.colorScheme.onError,
                                          ),
                                      ],
                                    ),
                                  )
                                : const SizedBox();
                          },
                        ),
                      if (activities.length - 1 != index) const Divider(),
                    ],
                  )
                : const SizedBox();
          },
        ),
      ],
    );
  }
}
