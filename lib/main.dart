import 'package:flutter/material.dart';

// Screens
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
      debugShowCheckedModeBanner: false,
      title: "Sensyth",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // Головний маршрут
      initialRoute: '/',

      // Маршрути програми
      routes: {
        '/': (context) => const HomeScreen(),
        '/connect_sensor': (context) => const ConnectSensorScreen(),
        '/record_sound': (context) => const RecordSoundScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/my_sensors': (context) => const MySensorsScreen(),
      },
    );
  }
}
