import 'package:flutter/material.dart';
import 'package:intro2/details/language.dart';

class profilKarti extends StatelessWidget {
  final String metinim;
  

  const profilKarti({Key? key, required this.metinim}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 200,
            width: 380,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('images/pngtree.jpg')),
              borderRadius: BorderRadius.circular(12.0),
              color: Color(0xFF363f93),
            ),
          ),
        ),
        Positioned(
          top: 130,
          child: Container(
            width: 200,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
          ),
        ),
        Positioned(
          top: 140,
          left: 30,
          child: Text(
            metinim,
            style: TextStyle(
                color: Color(0xFF363f93),
                fontSize: 40.0,
                fontFamily: 'BebasNeue'),
          ),
        ),
      ],
    );
  }
}
