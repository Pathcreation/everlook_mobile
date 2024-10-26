import 'package:everlook_mobile/source/imports.dart';
import 'package:everlook_mobile/source/preferences.dart';

part 'app_event.dart';

part 'app_state.dart';

part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  UserModel? user;

  AppBloc({
    required BuildContext ctx,
    required IAppScope appScope,
  })  : context = ctx,
        _appScope = appScope,
        super(const AppState.initial()) {
    on<_InitialEvent>(_onInitialEvent);
  }

  late BuildContext context;
  // late IAuthRepository authRepo;
  late final IAppScope _appScope;

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(const _LoadingAppState());
      await Future.delayed(const Duration(milliseconds: 400));
      // authRepo = _appScope.authRepository;
      emit(const _LoadingAppState());
      final tokens = await _appScope.tokenStorage.read();
      // if (authRepo.currentUser == null && tokens?.accessToken != null) {
      //   await authRepo.getCurrentUser().then((value) async {
      //     user = value;
      //     final firebaseToken = Preferences.loadFirebaseToken();
      //     if (firebaseToken != null) {
      //       user = value.copyWith(
      //         firebaseToken: firebaseToken,
      //         typeOs: defaultTargetPlatform == TargetPlatform.android
      //             ? 'ANDROID'
      //             : 'IOS',
      //       );
      //       await authRepo.editUser(user!);
      //     }
      //   });
      // }
      await Future.delayed(
        const Duration(
          seconds: 1,
        ),
        () {
          emit(const _DataAppState());
        },
      );
    } on DioException catch (err) {
      if ((err.response?.statusCode ?? 0) > 500) {
        emit(
          const _InfoAppState(
            message: 'Что-то пошло не так, попробуйте позже',
            pageState: PageState.error,
          ),
        );
      } else if (err.response?.statusCode != 401 &&
          err.response?.statusCode != 403) {
        emit(
          _InfoAppState(
            message: err.response?.data["message"].toString() ?? '',
            pageState: PageState.error,
          ),
        );
      }
      emit(const _DataAppState());
    } catch (ex) {
      emit(
        _InfoAppState(
          message: ex.toString(),
          pageState: PageState.error,
        ),
      );
      emit(const _DataAppState());
    }
  }
}
