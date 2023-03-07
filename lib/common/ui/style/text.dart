import 'package:flutter/material.dart';

class Headline1 extends StatelessWidget {
  final String data;
  const Headline1(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).textTheme.headline1);
  }
}

class Headline2 extends StatelessWidget {
  final String data;
  const Headline2(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(data, style: Theme.of(context).textTheme.headline2);
  }
}
