import 'package:json_annotation/json_annotation.dart';

part 'auth_token_pair.g.dart';

/// Auth token pair.
@JsonSerializable()
class AuthTokenPair {
  /// Access-token for accessing server resources for an authorized user.
  final String access;

  /// Refresh-token for updating the access-token.
  final String refresh;

  /// Create an instance [AuthTokenPair].
  const AuthTokenPair({
    required this.access,
    required this.refresh,
  });

  /// Create an instance [AuthTokenPair] from json.
  factory AuthTokenPair.fromJson(Map<String, dynamic> json) => _$AuthTokenPairFromJson(json);

  /// Convert an instance [AuthTokenPair] to json.
  Map<String, dynamic> toJson() => _$AuthTokenPairToJson(this);
}
