import 'package:flutter/material.dart';
import 'package:products_bloc/src/presentation/screens/pers_bottom_nav_bar/pers_bottom_nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Products App using BLoC',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PersBottomNavBar(),
    );
  }
}
