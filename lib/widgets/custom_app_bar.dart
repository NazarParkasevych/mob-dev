import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        Row(
          children: [
            // Тут вставляємо твій код Image.asset
            Image.asset(
              'assets/logo.png', // шлях до файлу логотипу
              height: 28,        // висота
              width: 28,         // ширина
            ),
            const SizedBox(width: 6),
            const Text(
              "sensyth",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 12),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
