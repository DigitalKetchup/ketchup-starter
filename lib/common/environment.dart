import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static const String _envFile = '.env';
  static const String _defaultEnv = 'dev';

  static Future<Environment> getEnv() async {
    var env = Environment._();
    await env.init();
    return env;
  }

  Environment._();

  Future<void> init() async {
    await dotenv.load(fileName: _envFile);
  }

  String env() {
    return dotenv.env['APP_ENV'] ?? _defaultEnv;
  }
}
