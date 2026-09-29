import 'package:flutter/material.dart';

import '../widgets/contact_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
    required this.onToggleTheme,
  });

  final VoidCallback onToggleTheme;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Візитівка розробника'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 52,
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Icon(
                    Icons.person,
                    size: 58,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                'Олексій Коваль',
                textAlign: TextAlign.center,
                style: theme.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Mobile Developer',
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              const ContactCard(
                icon: Icons.email_outlined,
                label: 'Email',
                value: 'oleksii.koval@example.com',
              ),
              const ContactCard(
                icon: Icons.phone_outlined,
                label: 'Телефон',
                value: '+380 67 123 45 67',
              ),
              const ContactCard(
                icon: Icons.language_outlined,
                label: 'Сайт',
                value: 'developer.example.com',
              ),
              const ContactCard(
                icon: Icons.code_outlined,
                label: 'GitHub',
                value: 'github.com/oleksii-koval',
              ),
              const SizedBox(height: 10),
              FilledButton.icon(
                onPressed: onToggleTheme,
                icon: const Icon(Icons.brightness_6_outlined),
                label: const Text('Змінити тему'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
