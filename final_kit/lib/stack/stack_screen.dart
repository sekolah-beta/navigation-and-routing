import '../app_router.dart';
import 'package:go_router/go_router.dart';
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
                context.pushNamed(AppRoute.stackSecond);
              },
              child: const Text('Go to Second Screen'),
            ),
            FilledButton(
              onPressed: () async {
                final result = await context.pushNamed(
                  AppRoute.stackSecondData,
                  extra: {'title': 'TITLE'},
                );
                // When a BuildContext is used from a StatefulWidget, the mounted property
                // must be checked after an asynchronous gap.
                if (!context.mounted) return;

                // to show data from secondscreen
                if (result != null && result is String) {
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
