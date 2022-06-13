import 'package:flutter/material.dart';
import 'package:intro2/details/aboutreading.dart';
import 'package:intro2/details/aboutvocabulary.dart';

class KucukDersKarti2 extends StatelessWidget {
  final String dersNo;
  final String resim2;
  final String metin;
  final String metin2;

  const KucukDersKarti2(
      {Key? key,
      required this.dersNo,
      required this.resim2,
      required this.metin,
      required this.metin2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => VocabularyDetay()),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22.0, top: 10.0),
            child: Container(
              height: 230,
              child: Stack(
                children: [
                  Positioned(
                      child: Material(
                    child: Container(
                      height: 180.0,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                                spreadRadius: 1,
                                offset: Offset(4, 4))
                          ]),
                    ),
                  )),
                  Positioned(
                      child: Card(
                    elevation: 20.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Container(
                      height: 160,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage(resim2))),
                    ),
                  )),
                  Positioned(
                      top: 15,
                      left: 150,
                      child: Container(
                        height: 150,
                        width: 180,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                dersNo,
                                style: TextStyle(
                                    fontFamily: 'BebasNeue',
                                    fontSize: 20.0,
                                    color: Color(0xFF363f93),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                metin2,
                                style: TextStyle(
                                    fontFamily: 'BebasNeue',
                                    fontSize: 14.0,
                                    color: Color(0xFF363f93)),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
