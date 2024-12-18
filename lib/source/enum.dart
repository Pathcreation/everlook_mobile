enum SearchType {
  chats,
  users,
  hashtags,
}

enum SearchPeopleType {
  subscriber,
  subscription,
  popular,
}

enum MarkdownType {
  keyboard,
  u,
  tT,
  tDelete,
}

enum Units {
  unit('Unit'),
  perSq('meter² / foot²');

  const Units(this.value);

  final String value;
}

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
