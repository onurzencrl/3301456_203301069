import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shimmer/flutter_shimmer.dart';
import 'package:intro2/cards/egitim.dart';
import 'package:intro2/cards/kucukegitim.dart';
import 'package:intro2/cards/kucukegitim2.dart';
import 'package:intro2/details/data.dart';

class Kelime extends StatefulWidget {
  const Kelime({Key? key}) : super(key: key);

  @override
  State<Kelime> createState() => _KelimeState();
}

class _KelimeState extends State<Kelime> {
  late bool _isLoading;

  @override
  void initState() {
    _isLoading = true;
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          'Vocabulary',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Eğitimler',
              style: TextStyle(fontFamily: 'BebasNeue', fontSize: 18.0),
            ),
          ),
          _isLoading
              ? ListTileShimmer(
                  bgColor: Color.fromARGB(255, 228, 224, 224),
                  height: 20,
                )
              : Container(
                  height: 200,
                  child: Swiper(
                    autoplay: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image(
                          image: AssetImage(images1[index]),
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                    viewportFraction: 0.8,
                    scale: 0.9,
                    pagination: SwiperPagination(),
                  )),
          _isLoading
              ? ListTileShimmer(
                  bgColor: Color.fromARGB(255, 228, 224, 224),
                  height: 20,
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text(
                    'A1-A2',
                    style: TextStyle(fontFamily: 'BebasNeue', fontSize: 18.0),
                  ),
                ),
          _isLoading
              ? ListTileShimmer(
                  bgColor: Color.fromARGB(255, 228, 224, 224),
                  height: 20,
                )
              : Container(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      KucukDersKarti2(
                        dersNo: "Ders 01 ",
                        resim2: 'images/a1a2pic.jpg',
                        metin: 'asdfsdfsf',
                        metin2: 'Araba Tamir metni.',
                      ),
                      KucukDersKarti2(
                        dersNo: "Ders 02 ",
                        resim2: 'images/a1a2pic.jpg',
                        metin: 'asdfsdfsf',
                        metin2: 'Araba Tamir metni.',
                      ),
                      KucukDersKarti2(
                        dersNo: "Ders 03 ",
                        resim2: 'images/a1a2pic.jpg',
                        metin: 'asdfsdfsf',
                        metin2: 'Araba Tamir metni.',
                      ),
                    ],
                  ),
                ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0),
            child: Text(
              'A1-A2',
              style: TextStyle(fontFamily: 'BebasNeue', fontSize: 18.0),
            ),
          ),
          _isLoading
              ? ListTileShimmer(
                  bgColor: Color.fromARGB(255, 228, 224, 224),
                  height: 20,
                )
              : Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      KucukDersKarti2(
                        dersNo: "Ders 01 ",
                        resim2: 'images/b1b2pic.jpg',
                        metin: 'asdfsdfsf',
                        metin2: 'Araba Tamir metni.',
                      ),
                      KucukDersKarti2(
                        dersNo: "Ders 02 ",
                        resim2: 'images/b1b2pic.jpg',
                        metin: 'asdfsdfsf',
                        metin2: 'Araba Tamir metni.',
                      ),
                      KucukDersKarti2(
                        dersNo: "Ders 03 ",
                        resim2: 'images/b1b2pic.jpg',
                        metin: 'asdfsdfsf',
                        metin2: 'Araba Tamir metni.',
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
