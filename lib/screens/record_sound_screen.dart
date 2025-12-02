import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class RecordSoundScreen extends StatelessWidget {
  const RecordSoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Записати звук"),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Почати запис"),
        ),
      ),
    );
  }
}
