import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Головний екран"),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size(250, 50)),
              onPressed: () => Navigator.pushNamed(context, '/connect_sensor'),
              child: const Text("Під'єднати датчик"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size(250, 50)),
              onPressed: () => Navigator.pushNamed(context, '/record_sound'),
              child: const Text("Записати звук"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: const Size(250, 50)),
              onPressed: () => Navigator.pushNamed(context, '/my_sensors'),
              child: const Text("Мої датчики"),
            ),
          ],
        ),
      ),
    );
  }
}
