import 'package:flutter/material.dart';

class RecordSoundScreen extends StatelessWidget {
  const RecordSoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Записати звук")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO: логіка запису звуку
          },
          child: const Text("Почати запис"),
        ),
      ),
    );
  }
}
