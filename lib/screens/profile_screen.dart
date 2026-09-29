import 'package:flutter/material.dart';

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
            ListTile(leading: Icon(Icons.email_outlined), title: Text('oleksii.koval@example.com')),
            ListTile(leading: Icon(Icons.phone_outlined), title: Text('+380 67 123 45 67')),
            ListTile(leading: Icon(Icons.language_outlined), title: Text('developer.example.com')),
          ],
        ),
      ),
    );
  }
}
