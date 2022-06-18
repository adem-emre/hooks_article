import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HooksTextExample extends HookWidget {
  const HooksTextExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("Build called");
    final textController = useTextEditingController();
    final headerText = useState("");

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              headerText.value,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              onChanged: (value) {
                headerText.value = value;
              },
              controller: textController,
              decoration: const InputDecoration(
                labelText: "Enter text",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
