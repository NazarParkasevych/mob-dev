import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  List<String> sounds = ["Сигнал 1", "Сигнал 2"];
  String? selectedSound = "Сигнал 1";

  final TextEditingController _textController = TextEditingController();

  void _addSound() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Додати звук"),
        content: TextField(
          controller: _textController,
          decoration: const InputDecoration(hintText: "Назва звуку"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Скасувати"),
          ),
          TextButton(
            onPressed: () {
              if (_textController.text.isNotEmpty) {
                setState(() {
                  sounds.add(_textController.text);
                });
                _textController.clear();
                Navigator.pop(context);
              }
            },
            child: const Text("Додати"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Налаштування"),
      body: Column(
        children: [
          const SizedBox(height: 16),
          const Text(
            "Звуки датчика",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: sounds.length,
              itemBuilder: (context, index) {
                String sound = sounds[index];
                return ListTile(
                  title: Text(sound),
                  leading: Radio<String>(
                    value: sound,
                    groupValue: selectedSound,
                    onChanged: (value) {
                      setState(() => selectedSound = value);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton.icon(
              icon: const Icon(Icons.add),
              label: const Text("Додати звук"),
              onPressed: _addSound,
            ),
          ),
        ],
      ),
    );
  }
}
