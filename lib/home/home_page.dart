import 'package:flutter/material.dart';

import '../examples/text_example/hooks_text_example.dart';
import '../examples/timer/timer_example.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const HooksTextExample()));
              },
              child: const Text("Text Example"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const TimerExample()));
              },
              child: const Text("Timer Example"),
            ),
          ],
        ),
      ),
    );
  }
}
