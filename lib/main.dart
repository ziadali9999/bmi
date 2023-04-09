import 'package:bmi_app/result.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/x': (context) => Result(result: result, isMale: isMale, age: age)
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          iconTheme: const IconThemeData(color: Colors.white),
          textTheme: const TextTheme(),
          fontFamily: 'AeonikTRIAL',
          primarySwatch: Colors.green,
          canvasColor: const Color.fromARGB(255, 18, 139, 129)),
      home: Home(),
    );
  }
}

Text mytextstyle(String str, double fs) {
  return Text(str,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.white,
          fontSize: fs,
          fontWeight: FontWeight.bold,
          fontFamily: 'AeonikTRIAL'));
}

Text mytextstyle1(String str, double fs) {
  return Text(str,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black,
          fontSize: fs,
          fontWeight: FontWeight.bold,
          fontFamily: 'AeonikTRIAL'));
}
