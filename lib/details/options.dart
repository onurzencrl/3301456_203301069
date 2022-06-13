import 'package:flutter/material.dart';

class Animasyon extends StatefulWidget {
  const Animasyon({Key? key}) : super(key: key);

  @override
  State<Animasyon> createState() => _AnimasyonState();
}

class _AnimasyonState extends State<Animasyon> with TickerProviderStateMixin {
  late AnimationController animasyonControl;
  late AnimationController animasyonControl2;

  late Animation<double> alphaAnimasyonDegerleri;
  late Animation<double> scaleAnimasyonDegerleri;

  @override
  void initState() {
    super.initState();
    animasyonControl = AnimationController(
        duration: Duration(milliseconds: 3000), vsync: this);
    alphaAnimasyonDegerleri =
        Tween(begin: 1.0, end: 0.0).animate(animasyonControl)
          ..addListener(() {
            setState(() {});
          });
    animasyonControl2 = AnimationController(
        duration: Duration(milliseconds: 3000), vsync: this);
    scaleAnimasyonDegerleri =
        Tween(begin: 50.0, end: 70.0).animate(animasyonControl2)
          ..addListener(() {
            setState(() {});
          });
  }

  Color color = Colors.red;
  Color color2 = Colors.red;

  @override
  void dispose() {
    super.dispose();
    animasyonControl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: GestureDetector(
            child: SizedBox(
                height: 50,
                width: 50,
                child: Opacity(
                    opacity: alphaAnimasyonDegerleri.value,
                    child: Icon(Icons.home))),
            onDoubleTap: () {
              animasyonControl.forward();
            },
          )),
          SizedBox(
            height: 100,
          ),
          Center(
              child: GestureDetector(
            child: SizedBox(
                height: 150,
                width: 150,
                child: Icon(
                  Icons.home,
                  size: scaleAnimasyonDegerleri.value,
                )),
            onLongPress: () {
              animasyonControl2.forward();
            },
          )),
          Center(
              child: GestureDetector(
            onHorizontalDragStart: (DragStartDetails details) {
              setState(() {
                color = Colors.amber;
              });
            },
            child: SizedBox(
                height: 150,
                width: 150,
                child: Icon(
                  Icons.home,
                  color: color,
                )),
          )),
          Center(
              child: GestureDetector(
            onHorizontalDragEnd: (DragEndDetails details) {
              setState(() {
                color2 = Colors.blue;
              });
            },
            child: SizedBox(
                height: 150,
                width: 150,
                child: Icon(
                  Icons.home,
                  color: color2,
                )),
          ))
        ],
      ),
    );
  }
}
