import 'package:flutter/material.dart';

import '../widgets/contact_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.onToggleTheme});

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Візитівка розробника')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const CircleAvatar(radius: 48, child: Icon(Icons.person, size: 52)),
            const SizedBox(height: 16),
            const Text('Олексій Коваль', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Mobile Developer'),
            const SizedBox(height: 24),
            const ContactCard(icon: Icons.email_outlined, label: 'Email', value: 'oleksii.koval@example.com'),
            const ContactCard(icon: Icons.phone_outlined, label: 'Телефон', value: '+380 67 123 45 67'),
            const ContactCard(icon: Icons.language_outlined, label: 'Сайт', value: 'developer.example.com'),
            const ContactCard(icon: Icons.code_outlined, label: 'GitHub', value: 'github.com/oleksii-koval'),
            const SizedBox(height: 8),
            FilledButton.icon(
              onPressed: onToggleTheme,
              icon: const Icon(Icons.brightness_6_outlined),
              label: const Text('Змінити тему'),
            ),
          ],
        ),
      ),
    );
  }
}
