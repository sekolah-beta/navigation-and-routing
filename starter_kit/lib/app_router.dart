// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'drawer/drawer_screen.dart';
// import 'stack/stack_screen.dart';
// import 'stack/second_data_screen.dart';
// import 'stack/second_screen.dart';
// import 'tab/tab_screen.dart';
// import 'home_screen.dart';

// class AppRoute {
//   static String home = 'home';
//   static String tab = 'tab';
//   static String drawer = 'drawer';
//   static String stack = 'stack';
//   static String stackSecond = 'stackSecond';
//   static String stackSecondData = 'stackSecondData';
// }

// /// The route configuration.
// final GoRouter router = GoRouter(
//   initialLocation: '/',
//   routes: <RouteBase>[
//     GoRoute(
//       path: '/',
//       name: AppRoute.home,
//       builder: (BuildContext context, GoRouterState state) {
//         return const HomeScreen();
//       },
//       routes: <RouteBase>[
//         GoRoute(
//           path: AppRoute.tab,
//           name: AppRoute.tab,
//           builder: (BuildContext context, GoRouterState state) {
//             return const TabScreen();
//           },
//         ),
//         GoRoute(
//           path: AppRoute.drawer,
//           name: AppRoute.drawer,
//           builder: (BuildContext context, GoRouterState state) {
//             return const DrawerScreen();
//           },
//         ),
//         GoRoute(
//           path: AppRoute.stack,
//           name: AppRoute.stack,
//           builder: (BuildContext context, GoRouterState state) {
//             return const StackScreen();
//           },
//           routes: [
//             GoRoute(
//               path: AppRoute.stackSecond,
//               name: AppRoute.stackSecond,
//               builder: (BuildContext context, GoRouterState state) {
//                 return const SecondScreen();
//               },
//             ),
//             GoRoute(
//               path: AppRoute.stackSecondData,
//               name: AppRoute.stackSecondData,
//               builder: (BuildContext context, GoRouterState state) {
//                 final extra = state.extra as Map<String, dynamic>;
//                 final title = extra['title'];
//                 return SecondDataScreen(title: title);
//               },
//             ),
//           ],
//         ),
//       ],
//     ),
//   ],
// );
