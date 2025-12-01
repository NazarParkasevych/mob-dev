import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/connect_sensor_screen.dart';
import 'screens/record_sound_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/my_sensors_screen.dart';

void main() {
  runApp(const SensorApp());
}

class SensorApp extends StatelessWidget {
  const SensorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sensor Audio App",
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/connect_sensor': (context) => const ConnectSensorScreen(),
        '/record_sound': (context) => const RecordSoundScreen(),
        '/my_sensors': (context) => const MySensorsScreen(),
      },
    );
  }
}
