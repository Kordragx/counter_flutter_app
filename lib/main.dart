import 'package:counter_app/views/home/counter_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // {} para que los parametros sean opcionales
  // ? al igual que swift para que el parametros sean opcionales
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: CounterView());
  }
}
