import 'package:flutter/material.dart';
import 'package:intro2/details/egitimlerim.dart';

class DersKarti extends StatelessWidget {
  final String resim3;
  final String dersno3;
  final String metinnn;

  const DersKarti(
      {Key? key,
      required this.resim3,
      required this.dersno3,
      required this.metinnn})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Egitimlerim(
                    metinn: metinnn,
                  )),
        );
      },
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dersno3,
                  style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: 150,
              width: 360,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(-8.0, -8.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ],
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0xFF363f93),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(resim3))),
            ),
          ),
        ],
      ),
    );
  }
}
