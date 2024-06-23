import 'app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // use go_router
    return MaterialApp.router(
      routerConfig: router,
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

    // return MaterialApp(
    //   // use navigation
    //   home: const HomeScreen(),

    //   // use named routing
    //   // initialRoute: '/',
    //   // routes: {
    //   //   '/': (context) => const HomeScreen(),
    //   //   '/tab': (context) => const TabScreen(),
    //   //   '/drawer': (context) => const DrawerScreen(),
    //   //   '/stack': (context) => const StackScreen(),
    //   // },
    //   debugShowCheckedModeBanner: false,
    //   theme: themeData,
    // );
  }
}
