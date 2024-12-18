import 'package:everlook_mobile/source/imports.dart';

class ActivityEntity {
  final int? id;
  final int? childCount;
  final String? name;
  final String? description;
  int priceFrom;
  final TextEditingController priceFromController;
  final TextEditingController priceToController;
  final FocusNode priceFromFocusNode;
  final FocusNode priceToFocusNode;
  int priceTo;
  Units? units;
  bool isActive;
  bool isExpanded;
  bool isEmergency;
  List<ActivityEntity>? children;
  int activeCount;
  int? structureId;
  int? parent;

  ActivityEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.priceFromController,
    required this.priceToController,
    required this.priceFromFocusNode,
    required this.priceToFocusNode,
    required this.structureId,
    required this.parent,
    this.priceFrom = 0,
    this.priceTo = 0,
    this.units,
    this.childCount,
    this.isActive = false,
    this.isExpanded = false,
    this.isEmergency = false,
    this.children,
    this.activeCount = 0,
  });
}
