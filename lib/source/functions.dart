import 'dart:convert';
import 'package:everlook_mobile/source/extensions.dart';
import 'package:intl/intl.dart' as intl;
import 'package:everlook_mobile/source/imports.dart';

/// PreRun function
Future preRunFunction() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

bool isFlutterLocalNotificationsInitialized = false;

/// Function for opening web pages
Future<void> openWeb({required String url}) async {
  final Uri uri = Uri.parse(url);
  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

/// Customizable toast
void showMessage({
  required String message,
  required PageState type,
}) {

}

void showMessageDialog({
  required String message,
  required BuildContext context,
  Function()? onTap,
}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final theme = Theme.of(context);
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: AppColors.white,
          title: Text(
            message,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 14.0,
              color: theme.colorScheme.surface,
            ),
          ),
          actions: [
            // AppButton(
            //   onPressed: () {
            //     Navigator.of(context, rootNavigator: true).pop();
            //     if (onTap != null) {
            //       onTap();
            //     }
            //   },
            //   title: 'Ок',
            // ),
          ],
        );
      },
    );
  });
}

Color getMessageColor(PageState type) {
  switch (type) {
    case PageState.error:
      return AppColors.error;
    case PageState.success:
      return AppColors.green;
    case PageState.info:
      return AppColors.primary;
    case PageState.isEmpty:
    case PageState.hasData:
    case PageState.load:
    default:
      return AppColors.error;
  }
}

String getMessageHexColor(PageState type) {
  switch (type) {
    case PageState.error:
      return 'linear-gradient(to right, #ff0000, #ff5050)';
    case PageState.success:
      return 'linear-gradient(to right, #00b09b, #96c93d)';
    case PageState.info:
      return 'linear-gradient(to right, #33ccff, #00ffff)';
    case PageState.isEmpty:
    case PageState.hasData:
    case PageState.load:
    default:
      return 'linear-gradient(to right, #ff0000, #ff0000)';
  }
}


String diffTime({
  required BuildContext context,
  required DateTime date,
}) {
  String time = '';
  if (DateTime.now().difference(date).inDays < 366) {
    time = '${DateTime.now().difference(date).inDays} дней';
  }
  if (DateTime.now().difference(date).inHours < 24) {
    time = '${DateTime.now().difference(date).inHours} часа';
  }
  if (DateTime.now().difference(date).inMinutes < 60) {
    time = '${DateTime.now().difference(date).inMinutes} минут';
  }
  return time;
}

Future<void> openUrl(String phone) async {
  final Uri url = Uri.parse(phone);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

List<String> extractHashtags(String text) {
  var hashtags = <String>[];
  var words = text.contains('\n') ? text.split('\n') : text.split(' ');
  for (var word in words) {
    if (word.startsWith('#')) {
      hashtags.add(word.substring(0));
    }
  }
  return hashtags;
}

/// Длительность видео для эскизов
String getTime(int seconds) {
  int days = seconds ~/ (24 * 3600);
  int hours = (seconds % (24 * 3600)) ~/ 3600;
  int minutes = ((seconds % 3600) ~/ 60);
  int sec = seconds % 60;

  String time =
      '${days.toString().padLeft(2, '0') == '00' ? '' : '${days.toString().padLeft(2, '0')}:'}'
      '${hours.toString().padLeft(2, '0') == '00' ? '' : '${hours.toString().padLeft(2, '0')}:'}'
      '${minutes.toString().padLeft(2, '0')}:'
      '${sec.toString().padLeft(2, '0') == '00' ? '' : sec.toString().padLeft(2, '0')}';

  return time;
}

void appLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) {
      return Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      );
    },
  );
}

Future<bool> promptPermissionSetting() async {
  if (Platform.isIOS &&
          await Permission.mediaLibrary.request().isGranted &&
          await Permission.photos.request().isGranted ||
      Platform.isAndroid && await Permission.photos.request().isGranted) {
    return true;
  }
  return false;
}

Future<bool> storagePermission() async {
  final DeviceInfoPlugin info = DeviceInfoPlugin(); // import 'package:device_info_plus/device_info_plus.dart';
  final AndroidDeviceInfo androidInfo = await info.androidInfo;
  debugPrint('releaseVersion : ${androidInfo.version.release}');
  final int androidVersion = int.parse(androidInfo.version.release.contains('.')
      ? androidInfo.version.release[0]
      : androidInfo.version.release);
  bool havePermission = false;

  if (androidVersion >= 13) {
    final request = await [
      Permission.videos,
      Permission.photos,
      //..... as needed
    ].request(); //import 'package:permission_handler/permission_handler.dart';

    havePermission =
        request.values.every((status) => status == PermissionStatus.granted);
  } else {
    final status = await Permission.storage.request();
    havePermission = status.isGranted;
  }

  if (!havePermission) {
    // if no permission then open app-setting
    await openAppSettings();
  }

  return havePermission;
}

// Функция для определения длины текста в пикселях на dart
int textWidth(
  String text,
  TextStyle style,
  double fontSize,
) {
  // Создаем текстовый виджет для расчета ширины текста
  final textSpan = TextSpan(
    text: text,
    style: style.copyWith(fontSize: fontSize),
  );
  final textPainter = TextPainter(
    text: textSpan,
    maxLines: 1,
    textDirection: TextDirection.ltr,
  );
  textPainter.layout(minWidth: 0, maxWidth: double.infinity);

  // Возвращаем ширину текста в пикселях
  return textPainter.width.toInt();
}

String? validatePassword(String value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value.isEmpty) {
    return 'Пожалуйста укажите пароль';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Введите действительный пароль';
    } else {
      return null;
    }
  }
}

String timeLeft(int totalHours) {
  if (totalHours < 0) {
    return '';
  }

  int days = totalHours ~/ 24;
  int hours = totalHours % 24;

  String result = '';

  if (days > 0) {
    result += "$days ${(days).numEnding(['день', 'дня', 'дней'])}";
    result += ' ';
  }

  if (hours > 0) {
    result += "$hours ${(hours).numEnding(['час', 'часа', 'часов'])}";
  }

  if (days == 0 && hours == 0) {
    return '';
  }

  return result;
}

String formatDouble(double number) {
  /// Если число в научной нотации
  if (number < 1 && number > 0 && number.toString().contains('e') == true) {
    /// Преобразуем число в строку
    String numberString = number.toString();

    /// Разделяем число на мантиссу и экспоненту
    List<String> parts = numberString.split('e');

    /// Получаем мантиссу
    double mantissa = double.parse(parts[0]);

    /// Получаем экспоненту
    int exponent = int.parse(parts[1]);

    /// Формируем строку с нужным количеством нулей после запятой
    intl.NumberFormat formatter =
        intl.NumberFormat("0.${"#" * (-exponent)}", 'en_US');
    return formatter.format(mantissa * pow(10, exponent));
  } else {
    /// Если число не в научной нотации, просто возвращаем его строковое представление
    return number.toString();
  }
}

String replaceCommaForDot({required String text}) {
  return text.replaceAll(',', '.');
}

Future<void> tryCatcher(Function() data, Function(String) errorCallback) async {
  try {
    await data();
  } on DioException catch (ex) {
    String error = (ex.response?.data.runtimeType == String
                ? jsonDecode(ex.response?.data)
                : (ex.response?.data as Map))?['message']
            .toString() ??
        '';
    errorCallback(error);
  } catch (ex) {
    errorCallback(ex.toString());
  }
}

// Функция для определения длины текста в пикселях на dart
int getTextWidth(
    String text,
    TextStyle style,
    BuildContext context,
    ) {
  final MediaQueryData data = MediaQuery.of(context);
  // Создаем текстовый виджет для расчета ширины текста
  final textSpan = TextSpan(
    text: text,
    style: style,
  );
  final textPainter = TextPainter(
    text: textSpan,
    locale: const Locale('ru'),
    textDirection: TextDirection.ltr,
    textScaleFactor: data.textScaleFactor,
  );
  textPainter.layout(
    minWidth: 0,
    maxWidth: data.size.width,
  );

  // Возвращаем ширину текста в пикселях
  return (textPainter.width + text.length * 1.2).toInt();
}
