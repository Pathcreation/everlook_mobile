
/// {@template app_config.class}
/// Application configuration.
/// {@endtemplate}
class AppConfig {
  /// Server url.
  final String url;
  final String host;

  /// Proxy url.
  final String? proxyUrl;

  /// {@macro app_config.class}
  const AppConfig({
    required this.url,
    required this.host,
    this.proxyUrl,
  });
}
