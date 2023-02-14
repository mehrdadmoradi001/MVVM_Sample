import 'package:flutter/material.dart';
import 'package:mvvm/di/service_locator.dart';
import 'package:mvvm/view/coinList_screen.dart';

void main() {
  initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoinListScreen(),
    );
  }
}
