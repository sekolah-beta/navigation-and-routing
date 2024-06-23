import 'second_data_screen.dart';
import 'second_screen.dart';
import 'package:flutter/material.dart';

class StackScreen extends StatefulWidget {
  const StackScreen({super.key});

  @override
  State<StackScreen> createState() => _StackScreenState();
}

class _StackScreenState extends State<StackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Go to Second Screen'),
            ),
            FilledButton(
              onPressed: () async {
                final result = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondDataScreen(
                      title: 'TITLE',
                    ),
                  ),
                );
                // When a BuildContext is used from a StatefulWidget, the mounted property
                // must be checked after an asynchronous gap.
                if (!context.mounted) return;

                // to show data from secondscreen
                if (result != null) {
                  ScaffoldMessenger.of(context)
                    ..removeCurrentSnackBar()
                    ..showSnackBar(SnackBar(content: Text(result)));
                }
              },
              child: const Text('Go to Second Screen with Data'),
            ),
          ],
        ),
      ),
    );
  }
}
