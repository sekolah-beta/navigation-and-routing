import 'package:flutter/material.dart';
import 'drawer/drawer_screen.dart';
import 'stack/stack_screen.dart';
import 'tab/tab_screen.dart';
import 'home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // use navigation
      // home: const HomeScreen(),

      // use named routing
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/tab': (context) => const TabScreen(),
        '/drawer': (context) => const DrawerScreen(),
        '/stack': (context) => const StackScreen(),
      },

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[200],
          centerTitle: true,
        ),
        colorScheme: const ColorScheme.light(primary: Colors.redAccent),
      ),
    );
  }
}
