import 'package:flutter/material.dart';
import 'drawer/drawer_screen.dart';
import 'stack/stack_screen.dart';
import 'tab/tab_screen.dart';

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
              onPressed: () => pushToScreen(context, const TabScreen()),
              child: const Text('Tab Navigation'),
            ),
            FilledButton(
              onPressed: () => pushToScreen(context, const DrawerScreen()),
              child: const Text('Drawer Navigation'),
            ),
            FilledButton(
              onPressed: () => pushToScreen(context, const StackScreen()),
              child: const Text('Stack Navigation'),
            ),
          ],
        ),
      ),
    );
  }
}
