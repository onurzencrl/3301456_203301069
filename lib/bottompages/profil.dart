import 'package:flutter/material.dart';

class Profilim extends StatelessWidget {
  const Profilim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
              ),
              Container(
                height: 350,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/profilpic.jpg')),
                    color: Color(0xFF363f93),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ),
              Positioned(
                left: 160,
                top: 310,
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'images/Online-Language-Course-Illustration.jpg')),
                      color: Color(0xFF363f93),
                      borderRadius: BorderRadius.circular(60.0)),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'Onur Zencirli',
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF363f93),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.facebook)),
              IconButton(onPressed: null, icon: Icon(Icons.facebook)),
              IconButton(onPressed: null, icon: Icon(Icons.facebook))
            ],
          ),
          Center(
            child: Text(
              'About Me',
              style: TextStyle(color: Color(0xFF363f93)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Text(
              'Merhaba, ben Onur Zencirli Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim. 20 yaşındayım ve Ankarada yaşıyorum ' +
                  ' Merhaba, ben Onur Zencirli Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim. 20 yaşındayım ve Ankarada yaşıyorum' +
                  'Merhaba, ben Onur Zencirli Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim. 20 yaşındayım ve Ankarada yaşıyorum' +
                  ' Merhaba, ben Onur Zencirli Selçuk Üniversitesi Bilgisayar Mühendisliği öğrencisiyim. 20 yaşındayım ve Ankarada yaşıyorum ',
              style: TextStyle(fontFamily: 'Comfortaa'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Center(
              child: Text(
                'Premium Üye*',
                style: TextStyle(color: Colors.amber),
              ),
            ),
          )
        ],
      ),
    );
  }
}
