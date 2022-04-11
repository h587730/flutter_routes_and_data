import 'package:flutter/material.dart';
import 'package:flutter_example/second_page.dart';
import 'home.dart';

void main() {
  //getInfo();
  runApp(MaterialApp(
    home: Home(),
    routes: {
      '/first': (context) => const Home(),
      '/second': (context) => const SecondPage()
    },

  ));
}

/*

Future<void> getInfo() async {

  String name = await Future.delayed(const Duration(seconds: 3), () {
    return 'Lisa';
  });

  int age = await getAge(name);

  print('name: $name - age: $age');
  print('All data is printed');
}

Future<int> getAge(String name) async {
  return await Future.delayed(const Duration(seconds: 2), () {
    return 32;
  });
}
*/










