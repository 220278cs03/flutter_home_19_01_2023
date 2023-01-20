import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key, required this.title});

  final String title;

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: TextFormField(
                controller: controller,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (controller.text.isNotEmpty) {
            context.read<AppController>().getName(controller.text);
            context.read<AppController>().addCounter();
            context.read<AppController>().setToList(controller.text);
          }
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
