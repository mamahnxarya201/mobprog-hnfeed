import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hnread/home/about_page.dart';
import 'home/home_page.dart';
import 'package:go_router/go_router.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'HackerNews Client',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(elevation: 0),
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: Colors.white,
        ),
        darkTheme: ThemeData.dark(),
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        routeInformationProvider: _router.routeInformationProvider,
      ),
    );
  }

  final _router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
          path: '/about',
          builder: (context, state) => const AboutPage(),
      )
    ],
    debugLogDiagnostics: true,
    errorBuilder: (_, __) => const HomePage(),
  );
}
