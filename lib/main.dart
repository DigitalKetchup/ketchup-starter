import 'package:flutter/material.dart';
import 'package:ketchup_starter/common/env.dart';

Future<void> main() async {
  var env = await Environment.instance();
  print(env.env);
  print(env.showComingSoonPage);
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
      home: ComingSoonPage(
        env: env,
      ),
    );
  }
}

class ComingSoonPage extends StatelessWidget {
  final Environment env;
  const ComingSoonPage({
    required this.env,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bg/coming_soon.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(child: Text("Welcome!"))),
    );
  }
}
