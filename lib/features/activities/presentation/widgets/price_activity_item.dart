import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/source/imports.dart';

class PriceActivityItem extends StatefulWidget {
  const PriceActivityItem({
    super.key,
    required this.activity,
    this.onMeasure,
  });

  final ActivityEntity activity;
  final Function(Units?)? onMeasure;

  @override
  State<PriceActivityItem> createState() => _PriceActivityItemState();
}

class _PriceActivityItemState extends State<PriceActivityItem> {
  final priceFromFormKey = GlobalKey<FormState>();
  final priceToFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.activity.name ?? '',
          style: theme.textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: AppTextField(
                formKey: priceFromFormKey,
                key: UniqueKey(),
                hintText: 'From',
                textController: widget.activity.priceFromController,
                focusNode: widget.activity.priceFromFocusNode,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              '-',
              style: theme.textTheme.labelMedium,
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: AppTextField(
                formKey: priceToFormKey,
                key: UniqueKey(),
                hintText: 'To',
                textController: widget.activity.priceToController,
                focusNode: widget.activity.priceToFocusNode,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SelectableWidget(
              title: 'Unit',
              onPressed: (value) {
                widget.activity.priceFromFocusNode.unfocus();
                widget.activity.priceToFocusNode.unfocus();
                if (widget.onMeasure != null) {
                  widget.onMeasure!(value != null
                      ? value.name == Units.unit.value
                          ? Units.unit
                          : Units.perSq
                      : null);
                }
              },
              data: widget.activity.units != null
                  ? ItemModel(
                      name: widget.activity.units?.value,
                    )
                  : null,
              items: [
                ItemModel(
                  name: Units.unit.value,
                ),
                ItemModel(
                  name: Units.perSq.value,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
