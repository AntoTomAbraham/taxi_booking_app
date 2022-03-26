import 'package:flutter/material.dart';
import 'package:taxi_booking/screens/Authentication/splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TAXI BOOKING APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const splash(),
    );
  }
}
