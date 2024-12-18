import 'package:everlook_mobile/features/main_page.dart';
import 'package:everlook_mobile/source/imports.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'bloc/app_bloc.dart';

@RoutePage()
class AppFlow extends StatefulWidget implements AutoRouteWrapper {
  const AppFlow({Key? key}) : super(key: key);

  @override
  State<AppFlow> createState() => _AppFlowState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _AppFlowState extends State<AppFlow> {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(
      LifecycleEventHandler(
        resumeCallBack: () async => setState(
          () {
            debugPrint('APP_CLOSED');
          },
        ),
      ),
    );

    super.initState();
  }

  void _onTranslatedLanguage(Locale? locale) {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final appScope = context.read<IAppScope>();
    appScope.localization.onTranslatedLanguage = _onTranslatedLanguage;
    handleAppLifecycleState(
      context: context,
      scope: appScope,
    );
    FlutterNativeSplash.remove();
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocProvider<AppBloc>(
        create: (context) => AppBloc(
          ctx: context,
          appScope: appScope,
        )..add(
            const AppEvent.initial(),
          ),
        child: BlocConsumer<AppBloc, AppState>(
          listener: (context, state) {
            state.mapOrNull(
              info: (info) {
                if (info.pageState == PageState.success) {
                  Navigator.pop(context);
                } else {
                  showMessage(
                    message: info.message,
                    type: info.pageState,
                  );
                }
              },
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (data) {
                return const SplashScreen(
                  fps: 60,
                );
              },
              data: (data) {
                return RefreshConfiguration(
                  headerBuilder: () => CustomHeader(
                    builder: (context, status) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 10,
                          ),
                          child: CircularProgressIndicator(
                            color: theme.colorScheme.primary,
                            strokeWidth: 1,
                          ),
                        ),
                      );
                    },
                  ),
                  child: const MainFlow(),
                );
              },
              orElse: () => const SplashScreen(
                fps: 60,
              ),
            );
          },
        ),
      ),
    );
  }
}

class LifecycleEventHandler extends WidgetsBindingObserver {
  final AsyncCallback? resumeCallBack;
  final AsyncCallback? suspendingCallBack;

  LifecycleEventHandler({
    this.resumeCallBack,
    this.suspendingCallBack,
  });

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        if (resumeCallBack != null) {
          await resumeCallBack!();
        }
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        if (suspendingCallBack != null) {
          await suspendingCallBack!();
        }
        break;
    }
  }
}

handleAppLifecycleState({
  required BuildContext context,
  required IAppScope scope,
}) {
  SystemChannels.lifecycle.setMessageHandler(
    (String? msg) async {
      switch (msg) {
        case "AppLifecycleState.paused":
          // await scope.authRepository.offline().then((value) {
          //   debugPrint('DEACTIVATE_SOCKET');
          // });

          break;
        case "AppLifecycleState.inactive":
          break;
        case "AppLifecycleState.resumed":
          break;
        default:
      }
      return null;
    },
  );
}
