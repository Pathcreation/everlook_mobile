import 'package:everlook_mobile/source/imports.dart';

/// A mixin with [AppColorScheme].
/// Used with [WidgetModel] subclasses.
mixin ThemeWMMixin<W extends ElementaryWidget, M extends ElementaryModel> on WidgetModel<W, M> implements ThemeIModelMixin {
  late ColorScheme _colorScheme;
  late TextTheme _textScheme;

  @override
  ColorScheme get colorScheme => _colorScheme;

  @override
  TextTheme get textScheme => _textScheme;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _colorScheme = Theme.of(context).colorScheme;
    _textScheme = Theme.of(context).textTheme;
  }
}

/// A mixin for [ThemeWMMixin] for get [AppColorScheme].
mixin ThemeIModelMixin implements IWidgetModel {
  /// App color scheme.
  ColorScheme get colorScheme;

  /// App text style scheme.
  TextTheme get textScheme;
}
