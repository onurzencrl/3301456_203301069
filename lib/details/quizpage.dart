import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:intro2/details/resultpage.dart';
import 'package:intro2/sqlitepages/Animalsdao.dart';
import 'package:intro2/sqlitepages/animals.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var sorular = <Animals>[];
  var yanlisSecenekler = <Animals>[];
  late Animals dogruSoru;
  var tumSecenekler = HashSet<Animals>();

  int soruSayac = 0;
  int dogruSayac = 0;
  int yanlisSayac = 0;

  String bayrakResimAdi = "kurukafa.jpg";
  String buttonAyazi = "";
  String buttonByazi = "";
  String buttonCyazi = "";
  String buttonDyazi = "";

  @override
  void initState() {
    super.initState();
    sorulariAl();
  }

  Future<void> sorulariAl() async {
    sorular = await Bayraklardao().rastgele5Getir();
    soruYukle();
  }

  Future<void> soruYukle() async {
    dogruSoru = sorular[soruSayac];

    bayrakResimAdi = dogruSoru.animal_picture;

    yanlisSecenekler = await Bayraklardao().rastgele3Getir(dogruSoru.animal_id);

    tumSecenekler.clear();
    tumSecenekler.add(dogruSoru);
    tumSecenekler.add(yanlisSecenekler[0]);
    tumSecenekler.add(yanlisSecenekler[1]);
    tumSecenekler.add(yanlisSecenekler[2]);

    buttonAyazi = tumSecenekler.elementAt(0).animal_name;
    buttonByazi = tumSecenekler.elementAt(1).animal_name;
    buttonCyazi = tumSecenekler.elementAt(2).animal_name;
    buttonDyazi = tumSecenekler.elementAt(3).animal_name;

    setState(() {});
  }

  void soruSayacKontrol() {
    soruSayac = soruSayac + 1;

    if (soruSayac != 4) {
      soruYukle();
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ResultPage(dogruSayisi: dogruSayac)));
    }
  }

  void dogruKontrol(String buttonYazi) {
    if (dogruSoru.animal_name == buttonYazi) {
      dogruSayac = dogruSayac + 1;
    } else {
      yanlisSayac = yanlisSayac + 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Doğru : $dogruSayac ",
                  style: TextStyle(
                    fontSize: 18,
                  )),
              Text("Yanlış: $yanlisSayac ",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ],
          ),
          soruSayac != 4
              ? Text(
                  "${soruSayac + 1}.Soru ",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                )
              : Text(
                  "5.Soru",
                  style: TextStyle(fontSize: 30),
                ),
          Image.asset('images/$bayrakResimAdi'),
          ElevatedButton(
            child: Text(buttonAyazi),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              onPrimary: Colors.white,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              dogruKontrol(buttonAyazi);
              soruSayacKontrol();
            },
          ),
          ElevatedButton(
            child: Text(buttonByazi),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              onPrimary: Colors.white,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              dogruKontrol(buttonByazi);
              soruSayacKontrol();
            },
          ),
          ElevatedButton(
            child: Text(buttonCyazi),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              onPrimary: Colors.white,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              dogruKontrol(buttonCyazi);
              soruSayacKontrol();
            },
          ),
          ElevatedButton(
            child: Text(buttonDyazi),
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              onPrimary: Colors.white,
              shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
            onPressed: () {
              dogruKontrol(buttonDyazi);
              soruSayacKontrol();
            },
          )
        ]),
      ),
    );
  }
}
