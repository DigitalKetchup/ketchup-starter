import 'package:flutter/material.dart';
import 'package:ketchup_starter/common/env.dart';

Future<void> main() async {
  var env = await Environment.getEnv();
  print(env.env());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        body: Center(
          child: Text('Welcome!'),
        ),
      ),
    );
  }
}
