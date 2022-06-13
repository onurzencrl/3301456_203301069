import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:intro2/details/data.dart';
import 'package:intro2/details/quizpage.dart';
import 'package:intro2/services/vocabulary_data.dart';
import 'package:intro2/services/vocabulary_data_answer.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class VocabularyDetay extends StatefulWidget {
  @override
  State<VocabularyDetay> createState() => _VocabularyDerayState();
}

class _VocabularyDerayState extends State<VocabularyDetay> {
  List<Kelimeler> parseKelimelerCevap(String cevap) {
    return KelimelerCevap.fromJson(convert.json.decode(cevap)).kelimelerListesi;
  }

  Future<List<Kelimeler>> tumKelimelerGoster() async {
    var url = Uri.parse("http://kasimadalan.pe.hu/sozluk/tum_kelimeler.php");
    var cevap = await http.get(url);
    return parseKelimelerCevap(cevap.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text('Kelime Ezberleme'),
        ),
        body: Column(
          children: [
            FutureBuilder<List<Kelimeler>>(
              future: tumKelimelerGoster(),
              builder: (BuildContext cintext, AsyncSnapshot<List> snapshot) {
                if (snapshot.hasData) {
                  int index = 0;
                  var kelimelerListesi = snapshot.data;

                  return Container(
                    height: 500,
                    child: Swiper(
                      itemHeight: 800,
                      itemWidth: 400,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        var kelime = kelimelerListesi?[index];
                        return Stack(
                          children: [
                            Container(
                              height: 400,
                              width: 400,
                              decoration: BoxDecoration(
                                  color: renkler[index],
                                  borderRadius: BorderRadius.circular(15.0)),
                            ),
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 300,
                                  ),
                                  Text(
                                    kelime.ingilizce,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        fontFamily: 'Orbitron'),
                                  ),
                                  Text(
                                    kelime.turkce,
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black,
                                        fontFamily: 'Orbitron'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                      viewportFraction: 0.8,
                      scale: 0.9,
                      layout: SwiperLayout.TINDER,
                    ),
                  );
                } else {
                  return Center();
                }
              },
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.7,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        side: BorderSide(width: 1, color: Color(0xFF363f93))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const QuizPage()),
                      );
                    },
                    child: Text('START QUİZ'),
                  ),
                ))
          ],
        ));
  }
}
