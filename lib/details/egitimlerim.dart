import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intro2/details/atasozleri.dart';

class Egitimlerim extends StatelessWidget {
  final metinn;
  const Egitimlerim({Key? key, this.metinn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Container(
            child: Center(
                child: Text(
              metinn,
              style: TextStyle(color: Colors.black),
            )),
            height: 250,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: Offset(8.0, 8.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
