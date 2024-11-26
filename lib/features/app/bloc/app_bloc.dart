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
  late final IAppScope _appScope;

  void _onInitialEvent(
    _InitialEvent event,
    Emitter<AppState> emit,
  ) async {
    try {
      emit(const _LoadingAppState());
      final tokens = await _appScope.tokenStorage.read();
      if (tokens != null && tokens.token != null) {
        if (tokens.firebaseToken != null) {
          _appScope.profileRepository.getCurrentUser().then((value) {
            user = value;
            if (user != null) {
              _appScope.profileRepository.updateUser(
                user!.copyWith(
                  deviceToken: tokens.firebaseToken!,
                  platform: Platform.isAndroid ? 'android' : 'ios',
                ),
              );
            }
          });
        }
      }
    } on DioException catch (err) {
      if ((err.response?.statusCode ?? 0) > 500) {
        emit(
          const _InfoAppState(
            message: 'Что-то пошло не так, попробуйте позже',
            pageState: PageState.error,
          ),
        );
      } else if (err.response?.statusCode != 401 && err.response?.statusCode != 403) {
        emit(
          _InfoAppState(
            message: err.response?.data["message"].toString() ?? '',
            pageState: PageState.error,
          ),
        );
      }
    } catch (ex) {
      emit(
        _InfoAppState(
          message: ex.toString(),
          pageState: PageState.error,
        ),
      );
    }
    emit(const _DataAppState());
  }
}
