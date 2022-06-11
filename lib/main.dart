import 'package:flutter/material.dart';

import 'home_assignment/home_assignment.dart';
import 'pages/home_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeAssignment(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        HomeAssignment.id: (context) => const HomeAssignment(),
      },
    );
  }
}
