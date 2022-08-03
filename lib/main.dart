import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Expenditure app'
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
