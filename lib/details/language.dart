import 'package:flutter/material.dart';
import 'package:intro2/cards/egitim.dart';
import 'package:intro2/cards/kucukegitim.dart';
import 'atasozleri.dart';

class DilIcerigi extends StatefulWidget {
  const DilIcerigi({Key? key}) : super(key: key);

  @override
  State<DilIcerigi> createState() => _DilIcerigiState();
}

class _DilIcerigiState extends State<DilIcerigi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Merhaba 10Z',
          style: TextStyle(
              fontFamily: 'Comfortaa',
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF363f93)),
        ),
        elevation: 0.0,
        backgroundColor: Color.fromARGB(240, 245, 245, 245),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(top: 14.0, left: 14.0, bottom: 14.0),
          child: Text(
            'Eğitimler',
            style: TextStyle(
                fontFamily: 'BebasNeue',
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              DersKarti(
                dersno3: 'Ders 01',
                resim3: 'images/kurukafa.jpg',
              ),
              DersKarti(
                dersno3: 'Ders 02',
                resim3: 'images/kurukafa.jpg',
              ),
              DersKarti(
                dersno3: 'Ders 03',
                resim3: 'images/kurukafa.jpg',
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 14.0, left: 14.0),
          child: Text(
            'A1 & A2',
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'BebasNeue'),
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Hero(
                tag: metinler,
                child: KucukDersKarti(
                  dersNo: "Ders 01 ",
                  resim2: 'images/a1a2pic.jpg',
                  metin: metinler[0],
                  metin2: 'Araba Tamir metni.',
                ),
              ),
              KucukDersKarti(
                dersNo: "Ders 02",
                resim2: 'images/a1a2pic.jpg',
                metin: metinler[1],
                metin2: 'Restoran yemek siparişi',
              ),
              KucukDersKarti(
                dersNo: "Ders 03",
                resim2: 'images/a1a2pic.jpg',
                metin: metinler[2],
                metin2: 'Yol tarifi ',
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, top: 0.0),
          child: Text(
            'B1 & B2 ',
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              KucukDersKarti(
                dersNo: 'Ders 01',
                resim2: 'images/b1b2pic.jpg',
                metin: metinler[0],
                metin2: 'İnternet bağlatma metini',
              ),
              KucukDersKarti(
                dersNo: 'Ders 02',
                resim2: 'images/b1b2pic.jpg',
                metin: metinler[0],
                metin2: 'Hayvanat bahçesi gezisi',
              ),
              KucukDersKarti(
                dersNo: 'Ders 03',
                resim2: 'images/b1b2pic.jpg',
                metin: metinler[0],
                metin2: 'Köpek besleme metni',
              )
            ],
          ),
        ),
      ]),
    );
  }
}
