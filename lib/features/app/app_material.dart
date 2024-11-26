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
  String? token;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void getToken(IAppScope appScope) async {
    await appScope.tokenStorage.read().then((tokens) {
      token = tokens?.token;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appScope = context.read<IAppScope>();
    final MediaQueryData data = MediaQuery.of(context);
    return MediaQuery(
      data: data.copyWith(
        textScaleFactor: 1,
      ),
      child: AdaptiveTheme(
        light: AppTheme.getTheme(
          locale: appScope.localization.currentLocale?.languageCode ?? 'ru',
        ),
        dark: AppTheme.getTheme(
          locale: appScope.localization.currentLocale?.languageCode ?? 'ru',
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return MaterialApp.router(
            checkerboardOffscreenLayers: false,
            debugShowCheckedModeBanner: false,
            title: 'Everlook',
            routerConfig: _appRouter.config(),
            supportedLocales: appScope.localization.supportedLocales,
            localizationsDelegates: appScope.localization.localizationsDelegates,
            locale: appScope.localization.currentLocale ?? const Locale('ru'),
            theme: theme,
            darkTheme: darkTheme,
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
