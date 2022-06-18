import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TimerExample extends HookWidget {
  const TimerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = useState(0);
    useEffect(() {
      print("useEffect Callled");
      final timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        number.value = timer.tick;
      });
      return () {
      print("Dispose Called");
        timer.cancel();
      };
    }, []);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          number.value.toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
