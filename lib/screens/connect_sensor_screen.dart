import 'package:flutter/material.dart';

class ConnectSensorScreen extends StatelessWidget {
  const ConnectSensorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Під'єднання датчика")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: логіка підключення датчика
          },
          child: const Text("Пошук датчика"),
        ),
      ),
    );
  }
}
