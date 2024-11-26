
import 'package:everlook_mobile/source/imports.dart';

const baseUrl = "https://everlook.ae/";
const apiService = 'api';
const clientService = 'client/';

/// Type for Flutter Toast
enum PageState {
  error,
  success,
  info,
  isEmpty,
  hasData,
  load,
}

enum NotificationType {
  ordinary('ordinary'),
  invitation('invitation'),
  joinRequest('join_request'),
  bid('bid');

  const NotificationType(this.value);

  final String value;

  static NotificationType fromJson(String value) {
    if (NotificationType.values.contains(values.byName(value))) {
      final type = values.byName(value);
      return type;
    }
    return NotificationType.ordinary;
  }
}

/// Navigation bar item type
enum IconsType {
  newJob,
  offers,
  notify,
  profile,
}

enum AuthBodyType {
  login,
  nickname,
  name,
  surname,
  birthday,
  interests,
  photo,
}

List<Color> gradientColors = const [
  Color(0xff307CF4),
  Color(0xff863AF6),
  Color(0xffBC37E2),
  Color(0xffEF615C),
];
List<Color> gradientColorsDark = const [
  Color(0xff0044af),
  Color(0xff4e02bd),
  Color(0xff7a009c),
  Color(0xff9e1b17),
];
List<Color> gradientColors2 = const [
  Color(0xff67A2FF),
  Color(0xffA86CFF),
  Color(0xffD339FF),
  Color(0xffFF746F),
];
List<Color> gradientColors3 = const [
  Color(0xff8CB8FF),
  Color(0xffCCAAFF),
  Color(0xffE382FF),
  Color(0xffFF746F),
];
List<Color> gradientColorsBlue = const [
  Color(0xff1842E4),
  Color(0xff2366F2),
  Color(0xff2D85FE),
  Color(0xff45F8FF),
];

List<Color> gradientColorsPink = const [
  Color(0xffBC59D6),
  Color(0xffD65ACF),
  Color(0xffE95FAF),
  Color(0xffF161A2),
];

List<Color> gradientColorsGreen = const [
  Color(0xff5CB04F),
  Color(0xff4EB264),
  Color(0xff4CBA6B),
  Color(0xff53C2C9),
];

List<Color> gradientColorsOrange = const [
  Color(0xffD65959),
  Color(0xffD6705A),
  Color(0xffE9915F),
  Color(0xffF1AF61),
];

List<Color> gradientColorsYellow = const [
  Color(0xffD28F2A),
  Color(0xffD6B339),
  Color(0xffD9B537),
  Color(0xffD99443),
];

List<String> interestList = [
  'Путешествия',
  'Строительство',
  'Финансы',
  'Инвестиции',
  'IT',
  'Веб-разработка',
  'Юриспруденция',
  'Разработка ПО',
  'Моушен-дизайн',
  'Здоровье',
  'Спорт',
  'Релокейт',
  'Гостиничный бизнес',
  'Маркетинг',
];

List<String> emojiList = [
  'assets/images/laugh.png',
  'assets/images/cute.png',
  'assets/images/facepalm.png',
  'assets/images/inLove.png',
];

