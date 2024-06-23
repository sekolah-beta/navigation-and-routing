import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondDataScreen extends StatelessWidget {
  const SecondDataScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Data Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('Kembali ke halaman sebelumnya'),
            ),
            FilledButton(
              onPressed: () {
                context.pop('ini data dari halaman selection');
              },
              child: const Text('Kembali ke halaman sebelumnya dengan data'),
            ),
            const Text('Ini data yang diterima :'),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
