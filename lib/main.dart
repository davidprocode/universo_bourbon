import 'package:flutter/material.dart';
import 'package:universo_bourbon/Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const DefaultTabController(
        length: 3,
        child: MyHomePage(title: 'Universo Bourbon'),
      ),
    );
  }
}
