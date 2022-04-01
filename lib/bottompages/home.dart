import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intro2/bottompages/main.dart';
import 'package:intro2/bottompages/profil.dart';
import 'package:intro2/cards/profilkarti.dart';
import 'package:intro2/bottompages/tasks.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _aktifIcerikNo = 0;
  List<Widget> _icerikler = [AnaSayfa(), Gorevlerim(), Profilim()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(fontFamily: 'Comfortaa'),
        currentIndex: _aktifIcerikNo,
        selectedItemColor: Color(0xFF363f93),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
      body: _icerikler[_aktifIcerikNo],
      backgroundColor: Color.fromARGB(240, 245, 245, 245),
    );
  }
}
