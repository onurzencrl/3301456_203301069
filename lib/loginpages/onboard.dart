import 'package:flutter/material.dart';
import 'package:flutter_walkthrough_screen/flutter_walkthrough_screen.dart';
import 'package:intro2/loginpages/login.dart';
import 'package:intro2/bottompages/main.dart';

class OnBoardScreen extends StatelessWidget {
  final List<OnbordingData> list = [
    OnbordingData(
      image: AssetImage("images/University-Students-Illustration.jpg"),
      titleText: Text(
        "EN KAPSAMLI İNGİLİZCE UYGULAMASI. ",
        style: TextStyle(fontFamily: 'Comfortaa'),
      ),
      descText: Text(
        "İngilizcenin bütün seviyelerini öğrenin.",
      ),
    ),
    OnbordingData(
      image: AssetImage("images/onboardpic.jpg"),
      titleText: Text(
        "METHODLARLA İNGİLİZCE",
        style: TextStyle(fontFamily: 'Comfortaa'),
      ),
      descText: Text(
        "Parçalarına ayırma yöntemi ile İngilizceyi en etkili şekilde öğrenin.",
        textAlign: TextAlign.center,
      ),
    ),
    OnbordingData(
      image: AssetImage("images/Online-Language-Course-Illustration.jpg"),
      titleText: Text(
        "PREMİUM'U KEŞFEDİN !",
        style: TextStyle(fontFamily: 'Comfortaa'),
      ),
      descText: Text(
        "Premium üye olarak Speaking ,Readding ve Grammer yeteneklerinizi geliştirin.",
        textAlign: TextAlign.center,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreen(
      onbordingDataList: list,
      colors: [
        //list of colors for per pages
        Colors.white,
        Colors.red,
      ],
      pageRoute: MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      nextButton: Text(
        "NEXT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      lastButton: Text(
        "GOT IT",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      skipButton: Text(
        "SKIP",
        style: TextStyle(
          color: Colors.purple,
        ),
      ),
      selectedDotColor: Colors.orange,
      unSelectdDotColor: Colors.grey,
    );
  }
}
