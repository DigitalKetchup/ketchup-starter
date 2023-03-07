import 'package:flutter/material.dart';
import 'package:ketchup_starter/common/env.dart';
import 'package:ketchup_starter/ui/page/coming_soon.dart';
import 'package:ketchup_starter/ui/page/login.dart';

Future<void> main() async {
  var env = await Environment.instance();
  runApp(MyApp(env));
}

class MyApp extends StatelessWidget {
  final Environment env;
  const MyApp(this.env, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: env.title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: env.showComingSoonPage ? const ComingSoonPage() : const LoginPage(),
    );
  }
}
