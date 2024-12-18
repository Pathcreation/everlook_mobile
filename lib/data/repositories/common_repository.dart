import 'dart:convert';

import 'package:everlook_mobile/source/imports.dart';

class CommonRepository implements ICommonRepository {
  final CommonService _service;

  CommonRepository({
    required TokenStorageImpl tokenStorage,
    required CommonService service,
  }) : _service = service;

  @override
  Future<String?> getTermEmergency() async {
    final response = await _service.getTermEmergency();
    return response != null ? jsonDecode(response) : null;
  }
}
