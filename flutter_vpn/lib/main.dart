import 'package:flutter/material.dart';
import './screens/screens.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter VPN',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          primaryIconTheme: IconThemeData(color: Colors.black)),
      home: SplashScreen(),
    );
  }
}
