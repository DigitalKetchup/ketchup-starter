import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static const String _envFile = '.env';
  static const String _defaultEnv = 'dev';
  static const String _defaultTitle = 'Digital Ketchup Demo';
  static const bool _defaultShowComingSoonPage = true;
  static const bool _defaultShowComingSoonBackground = true;

// Convet to Singleton
  static Future<Environment> instance() async {
    var env = Environment._();
    await env.init();
    return env;
  }

  Environment._();

  Future<void> init() async {
    await dotenv.load(fileName: _envFile);
  }

  String get env {
    return dotenv.env['APP_ENV'] ?? _defaultEnv;
  }

  bool get showComingSoonPage {
    var showPage = dotenv.env['APP_SHOW_COMING_SOON_PAGE'];
    if (showPage == null) {
      return _defaultShowComingSoonPage;
    }
    return showPage == "true";
  }

  String get title {
    return dotenv.env['APP_TITLE'] ?? _defaultTitle;
  }

  bool get comingSoonHasBackground {
    var pageWithBg = dotenv.env['APP_COMING_SOON_IMAGE_BG'];
    if (pageWithBg == null) {
      return _defaultShowComingSoonBackground;
    }
    return pageWithBg == "true";
  }
}
