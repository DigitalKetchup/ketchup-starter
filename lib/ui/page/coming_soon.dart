import 'package:flutter/material.dart';
import 'package:ketchup_starter/common/ui/style/frosted.dart';
import 'package:ketchup_starter/common/ui/style/text.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/coming_soon_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 0.5,
              child: Frosted(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/logo.jpeg",
                      ),
                    ),
                    const FittedBox(child: Headline2("Coming Soon...")),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
