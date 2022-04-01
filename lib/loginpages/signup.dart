import 'package:flutter/material.dart';
import 'package:intro2/loginpages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
          child: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50, top: 100.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Kullanıcı Adınızı Giriniz',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF363f93),
                      ),
                    ),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'E-mail Adresinizi Giriniz';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'E-mail Adresinizi Giriniz',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF363f93),
                      ),
                    ),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Şifrenizi Giriniz';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Şifrenizi Giriniz',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF363f93),
                      ),
                    ),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Şifrenizi Giriniz';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Şifrenizi Giriniz',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF363f93),
                      ),
                    ),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Şifrenizi Giriniz';
                  } else {
                    return null;
                  }
                },
              ),
              ElevatedButton(
                onPressed: () {
                  AlertDialog(
                    title: Text('Kayıt Başarılı!'),
                  );
                },
                child: Text('Kayıt Ol'),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
