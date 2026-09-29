import 'package:flutter/material.dart';

import '../widgets/contact_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Візитівка розробника')),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(radius: 48, child: Icon(Icons.person, size: 52)),
            SizedBox(height: 16),
            Text('Олексій Коваль', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text('Mobile Developer'),
            SizedBox(height: 24),
            ContactCard(icon: Icons.email_outlined, label: 'Email', value: 'oleksii.koval@example.com'),
            ContactCard(icon: Icons.phone_outlined, label: 'Телефон', value: '+380 67 123 45 67'),
            ContactCard(icon: Icons.language_outlined, label: 'Сайт', value: 'developer.example.com'),
            ContactCard(icon: Icons.code_outlined, label: 'GitHub', value: 'github.com/oleksii-koval'),
          ],
        ),
      ),
    );
  }
}
