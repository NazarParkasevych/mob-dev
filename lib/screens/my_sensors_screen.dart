import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class MySensorsScreen extends StatelessWidget {
  const MySensorsScreen({super.key});

  final List<String> sensors = const ["Кухня", "Ванна"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Мої датчики"),
      body: ListView.builder(
        itemCount: sensors.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.sensors),
            title: Text(sensors[index]),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          );
        },
      ),
    );
  }
}
