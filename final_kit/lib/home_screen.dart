import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void pushToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation & Routing')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/tab'),
              child: const Text('Tab Navigation'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/drawer'),
              child: const Text('Drawer Navigation'),
            ),
            FilledButton(
              onPressed: () => Navigator.of(context).pushNamed('/stack'),
              child: const Text('Stack Navigation'),
            ),
          ],
        ),
      ),
    );
  }
}
