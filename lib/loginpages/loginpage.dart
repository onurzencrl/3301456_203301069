import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intro2/bottompages/home.dart';
import 'package:intro2/loginpages/signup.dart';
import 'package:intro2/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage2 extends StatefulWidget {
  const LoginPage2({Key? key}) : super(key: key);

  @override
  State<LoginPage2> createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  var username;
  var password;
  final _formKey = GlobalKey<FormState>();
  final emailCon = new TextEditingController();
  final nameCon = new TextEditingController();

  AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/loginpic2.jpg'))),
              ),
              TextFormField(
                controller: emailCon,
                validator: (deger) {
                  if (deger!.isEmpty) {
                    return 'Bu alan boş bırakılamaz.';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  username = value;
                },
                decoration: InputDecoration(
                    labelText: 'Email Adresi',
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Color(0xFF363f93),
                      ),
                    ),
                    border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameCon,
                obscureText: true,
                validator: (deger) {
                  if (deger!.isEmpty) {
                    return 'Bu alan boş bırakılamaz.';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value;
                },
                decoration: InputDecoration(
                  labelText: 'Şifrenizi Giriniz',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Color(0xFF363f93),
                    ),
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ));
                    },
                    child: Text('Sign Up'),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text('Şifremi Unuttum'),
                  )
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(280, 40),
                ),
                onPressed: () {
                  _authService
                      .signIn(emailCon.text, nameCon.text)
                      .then((value) {
                    if (value != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage()));
                    } else {
                      message("Kullanıcı adı veya şifre hatalı...");
                    }
                  });

                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  } else {
                    return null;
                  }

                  username = nameCon.text;
                  password = emailCon.text;
                },
                child: Text('LOGİN'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginButton() => ElevatedButton(
        child: Text('Giriş Yap'),
        onPressed: () {},
      );

  void message(String text) {
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black38,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
