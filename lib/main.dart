import 'package:flutter/material.dart';

import 'screens/profile_screen.dart';

void main() {
  runApp(const DeveloperCardApp());
}

class DeveloperCardApp extends StatelessWidget {
  const DeveloperCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Developer Card',
      theme: ThemeData(useMaterial3: true),
      home: const ProfileScreen(),
    );
  }
}
