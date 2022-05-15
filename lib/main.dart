import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nueva_app9/pages/Home.dart';
import 'package:nueva_app9/pages/Users.dart';

void main() => runApp(BottomBar_App());

class BottomBar_App extends StatefulWidget {
  const BottomBar_App({Key? key}) : super(key: key);

  @override
  State<BottomBar_App> createState() => _BottomBar_AppState();
}

class _BottomBar_AppState extends State<BottomBar_App> {
  int _paginaActual = 0;

  List<Widget> _paginas = [
    PaginaHome(),
    PaginaUsers(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bottom Navigator Bar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bottom Navigator Bar"),
        ),
        body: _paginas[_paginaActual],
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _paginaActual = index;
              });
            },
            currentIndex: _paginaActual,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle), label: "Users")
            ]),
      ),
    );
  }
}
