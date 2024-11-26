import 'dart:convert';

import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    bool authenticated = false;
    const _secureStorage = FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
    final value = await _secureStorage.read(key: TokensStorageKeys.authToken.keyName);
    if (value != null) {
      String? token = jsonDecode(value)["token"];
      authenticated = token != null && token.isNotEmpty;
    }
    if (authenticated) {
      resolver.next(true);
    } else {
      router.navigate(
        AuthRoute(
          onResult: (success) {
            resolver.next(success);
          },
        ),
      );
    }
  }
}
