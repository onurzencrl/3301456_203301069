import 'package:flutter/material.dart';
import 'package:intro2/details/atasozleri.dart';

class ReadingDetay extends StatelessWidget {
  final dersno;
  final resim2;
  final metin;

  const ReadingDetay({Key? key, this.dersno, this.resim2, this.metin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  height: 380,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: AssetImage(resim2)),
                      color: Color(0xFF363f93),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50.0)))),
              IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 40.0),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Positioned(
                top: 220,
                child: Container(
                  child: Center(
                    child: Text(
                      dersno,
                      style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontSize: 22.0,
                          color: Color(0xFF363f93),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  width: 250,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30.0),
                          topRight: Radius.circular(30.0))),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 12.0, right: 12.0),
                child: Hero(
                  tag: metinler,
                  child: Text(
                    metin,
                    style: TextStyle(fontFamily: 'Comfortaa'),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
