import 'package:flutter/material.dart';
import 'package:layout/screens/home.dart';
import 'package:layout/themes/my_theme.dart';

void main() {
  runApp(const Layout());
}

class Layout extends StatelessWidget {
const Layout({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: myTheme,
      home: const Home(),
    );
  }
}
