import 'package:everlook_mobile/navigation/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:everlook_mobile/source/imports.dart';

import 'app.dart';

class AppMaterial extends StatefulWidget {
  const AppMaterial({
    Key? key,
  }) : super(key: key);

  @override
  State<AppMaterial> createState() => _AppMaterialState();
}

class _AppMaterialState extends State<AppMaterial> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    final MediaQueryData data = MediaQuery.of(context);
    return MediaQuery(
      data: data.copyWith(
        textScaleFactor: 1,
      ),
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            checkerboardOffscreenLayers: false,
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            locale: const Locale('ru'),
            theme: AppTheme.theme.copyWith(brightness: Brightness.dark),
            supportedLocales: const <Locale>[Locale('ru')],
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, widget) {
              return GestureDetector(
                onTap: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                child: App(
                  child: widget ?? const SplashScreen(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
