import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'price_activity_item.dart';

class PriceActivityList extends StatelessWidget {
  const PriceActivityList({
    super.key,
    required this.activities,
    this.onMeasure,
  });

  final List<ActivityEntity> activities;
  final Function(int, ActivityEntity, Units?)? onMeasure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          activities.length,
          (index) {
            return Column(
              children: [
                if (activities[index].children != null)
                  ...List.generate(
                    activities[index].children!.length,
                    (idx) {
                      return activities[index].children![idx].isActive
                          ? Column(
                              children: [
                                PriceActivityItem(
                                  key: ValueKey(activities[index].children![idx].id),
                                  activity: activities[index].children![idx],
                                  onMeasure: (unit) {
                                    if (onMeasure != null) {
                                      onMeasure!(
                                        index,
                                        activities[index].children![idx],
                                        unit,
                                      );
                                    }
                                  },
                                ),
                                if (activities[index].children!.length - 1 != idx)
                                  const Divider(
                                    height: 33,
                                    thickness: 1,
                                  ),
                              ],
                            )
                          : const SizedBox();
                    },
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
