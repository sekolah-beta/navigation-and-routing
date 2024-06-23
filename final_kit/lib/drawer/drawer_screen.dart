import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  String? title;

  void _onTapMenu(String value) {
    setState(() {
      title = value;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navigation'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.home),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                return FilledButton(
                  child: const Text('Buka Drawer'),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            Text(title ?? 'Belum Pilih Menu'),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.red[200]),
              child: const Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Menu 1'),
              onTap: () => _onTapMenu('Pilih Menu 1'),
            ),
            ListTile(
              title: const Text('Menu 2'),
              onTap: () => _onTapMenu('Pilih Menu 2'),
            ),
          ],
        ),
      ),
    );
  }
}
