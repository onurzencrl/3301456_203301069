import 'package:flutter/material.dart';
import 'package:intro2/loginpages/login.dart';
import 'package:intro2/loginpages/loginpage.dart';
import 'package:intro2/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordagainController =
      TextEditingController();

  AuthService _authService = AuthService();

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
                controller: _nameController,
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
                    return 'Kullanıcı Adını Adresinizi Giriniz';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: _emailController,
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
                    return 'E-mail adresinizi Giriniz';
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              TextFormField(
                controller: _passwordController,
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
                controller: _passwordagainController,
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
                onPressed: () async {
                  final SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.setString('name', _nameController.text);
                  sharedPreferences.setString('email', _emailController.text);


                  _authService
                      .createPerson(_nameController.text, _emailController.text,
                          _passwordController.text)
                      .then((value) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage2()));
                  });
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
