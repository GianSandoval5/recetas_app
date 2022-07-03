import 'package:flutter/material.dart';
import 'package:recetas_app/paginas/menu_inicio.dart';
import 'package:recetas_app/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash",
      routes: {
        "splash": (_) => const SplashScreen(),
        "inicio": (_) => const MenuInicio(),
      },
    );
  }
}
