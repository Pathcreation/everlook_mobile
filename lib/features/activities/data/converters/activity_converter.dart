import 'package:everlook_mobile/core/architecture/data/converter/converter.dart';
import 'package:everlook_mobile/features/activities/domain/entities/activity_entity.dart';
import 'package:everlook_mobile/source/imports.dart';

/// Converter for [IpEntity].
typedef IActivityEntityConverter = Converter<ActivityEntity, ActivityModel>;

/// {@template category_converter.class}
/// Implementation of [IIpConverter].
/// {@endtemplate}
final class ActivityEntityConverter extends IActivityEntityConverter {
  /// {@macro category_converter.class}
  const ActivityEntityConverter();

  @override
  ActivityEntity convert(ActivityModel input) {
    return ActivityEntity(
      childCount: input.childCount,
      id: input.id,
      structureId: input.structureId,
      parent: input.parent,
      name: input.name ?? '',
      description: input.description,
      isActive: true,
      isEmergency: input.emergency ?? false,
      priceFromController: TextEditingController(text: input.from?.toString() ?? ''),
      priceToController: TextEditingController(text: input.to?.toString() ?? ''),
      priceFromFocusNode: FocusNode(),
      priceToFocusNode: FocusNode(),
      units: input.perSq != null
          ? (input.perSq!)
              ? Units.perSq
              : Units.unit
          : null,
    );
  }

  @override
  Iterable<ActivityEntity> convertMultiple(Iterable<ActivityModel> inputList) {
    return inputList.map((e) {
      return ActivityEntity(
        childCount: e.childCount,
        id: e.id,
        structureId: e.structureId,
        parent: e.parent,
        name: e.name ?? '',
        description: e.description,
        isActive: e.from != null || e.to != null,
        isEmergency: e.emergency ?? false,
        priceFromController: TextEditingController(text: e.from?.toString() ?? ''),
        priceToController: TextEditingController(text: e.to?.toString() ?? ''),
        priceFromFocusNode: FocusNode(),
        priceToFocusNode: FocusNode(),
        units: e.perSq != null
            ? (e.perSq!)
                ? Units.perSq
                : Units.unit
            : null,
      );
    }).toList();
  }
}

typedef IAddActivityModelConverter = Converter<ActivityModel, ActivityEntity>;

/// {@template category_converter.class}
/// Implementation of [IIpConverter].
/// {@endtemplate}
final class AddActivityModelConverter extends IAddActivityModelConverter {
  /// {@macro category_converter.class}
  const AddActivityModelConverter();

  @override
  ActivityModel convert(ActivityEntity input) {
    return ActivityModel(
      id: input.id,
      structureId: input.id,
      parent: input.parent,
      emergency: input.isEmergency,
      perSq: input.units == Units.perSq,
      from: input.priceFromController.text.isNotEmpty ? int.parse(input.priceFromController.text) : null,
      to: input.priceToController.text.isNotEmpty ? int.parse(input.priceToController.text) : null,
    );
  }
}

typedef IUpdateActivityModelConverter = Converter<ActivityModel, ActivityEntity>;

/// {@template category_converter.class}
/// Implementation of [IIpConverter].
/// {@endtemplate}
final class UpdateActivityModelConverter extends IUpdateActivityModelConverter {
  /// {@macro category_converter.class}
  const UpdateActivityModelConverter();

  @override
  ActivityModel convert(ActivityEntity input) {
    return ActivityModel(
      id: input.id,
      structureId: input.structureId,
      parent: input.parent,
      emergency: input.isEmergency,
      perSq: input.units == Units.perSq,
      from: input.priceFromController.text.isNotEmpty ? int.parse(input.priceFromController.text) : null,
      to: input.priceToController.text.isNotEmpty ? int.parse(input.priceToController.text) : null,
    );
  }

  @override
  Iterable<ActivityModel> convertMultiple(Iterable<ActivityEntity> inputList) {
    final list = inputList.map((e) {
      return ActivityModel(
        id: e.id,
        structureId: e.structureId,
        parent: e.parent,
        emergency: e.isEmergency,
        perSq: e.units == Units.perSq,
        from: int.parse(e.priceFromController.text),
        to: int.parse(e.priceToController.text),
      );
    });
    return list;
  }
}
