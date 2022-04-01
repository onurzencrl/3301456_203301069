import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intro2/loginpages/loginpage.dart';
import 'package:intro2/loginpages/signup.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120.0, bottom: 30.0),
            child: Center(
              child: Image.asset(
                'images/loginpic.jpg',
                height: 250,
              ),
            ),
          ),
          Text(
            'WELCOME TO MY APP',
            style: TextStyle(
                color: Color(0xFF363f93),
                fontSize: 14.0,
                fontWeight: FontWeight.bold),
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(280, 40),
                  side: BorderSide(width: 1, color: Color(0xFF363f93))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage2()),
                );
              },
              child: Text('LOGİN'),
            ),
          )),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUp()));
            },
            child: Text('SİGN UP'),
            style: ElevatedButton.styleFrom(
                primary: Color(0xFF363f93),
                shadowColor: Colors.grey,
                minimumSize: Size(280, 40)),
          )
        ],
      ),
    );
  }
}
