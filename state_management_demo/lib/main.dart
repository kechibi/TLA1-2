import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/counter_view_model.dart';
import 'views/home_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeView(),
    );
  }
}
