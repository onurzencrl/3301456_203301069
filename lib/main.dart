import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:intro2/bottompages/home.dart';
import 'package:intro2/details/language.dart';
import 'package:intro2/details/options.dart';
import 'package:intro2/details/vocabulary.dart';
import 'package:intro2/loginpages/login.dart';
import 'package:intro2/loginpages/onboard.dart';
import 'package:intro2/bottompages/profil.dart';
import 'package:intro2/cards/profilkarti.dart';
import 'package:intro2/bottompages/tasks.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:intro2/loginpages/signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnBoardScreen(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String? sKullaniciAdi;
  String? sEmail;

  Future<void> readLogin() async {
    var sp = await SharedPreferences.getInstance();

    setState(() {
      sKullaniciAdi = sp.getString("name") ?? "Kullanici Adi Yok.";
      sEmail = sp.getString("email") ?? "şifre yok ";
    });
  }

  @override
  void initState() {
    super.initState();
    readLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Hi  $sKullaniciAdi",
          style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Comfortaa',
              fontWeight: FontWeight.bold,
              color: Color(0xFF363f93)),
        ),
        elevation: 0.0,
        backgroundColor: Color.fromARGB(240, 245, 245, 245),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xFF363f93),
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              arrowColor: Color(0xFF363f93),
              accountName: Text("Onur Zencirli"),
              accountEmail: Text(
                "$sEmail",
                style: TextStyle(
                  fontFamily: 'Comfortaa',
                ),
              ),
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 242, 243, 253),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Color(0xFF363f93)),
            ),
            ListTile(
              title: Text(
                "My Profil",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profilim()));
              },
            ),
            ListTile(
              title: Text("Eğitimlerim",
                  style:
                      TextStyle(fontFamily: 'Comfortaa', color: Colors.white)),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                "AnimasyonTest",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Comfortaa',
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Animasyon()));
              },
            ),
            ListTile(
              title: GestureDetector(
                onSecondaryTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Çıkış Yap",
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Comfortaa')),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 12.0, bottom: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Premium Edinin!',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF363f93)),
              ),
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(8.0, 8.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ],
                  color: Color(0xFF363f93),
                  borderRadius: BorderRadius.circular(18.0)),
              width: MediaQuery.of(context).size.width * 0.92,
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                title: Text(
                  'Go Premium!',
                  style:
                      TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
                ),
                subtitle: Text(
                    'Perium Üye Özellikleri ' +
                        '*Speaking ,Vocabulary ve Writing bölümleri açılır. ' +
                        '*Speaking ,Vocabulary ve Writing bölümleri açılır. ' +
                        '*Speaking ,Vocabulary ve Writing bölümleri açılır. ',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Comfortaa')),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, left: 12.0),
              child: Text(
                'Hangi becerini geliştirmek istersin?',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Comfortaa',
                    color: Color(0xFF363f93)),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DilIcerigi()));
            },
            child: profilKarti(metinim: ' Reading'),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Kelime()));
            },
            child: profilKarti(metinim: ' Vocabulary'),
          ),
          profilKarti(metinim: 'Writing')
        ],
      ),
    );
  }
}
