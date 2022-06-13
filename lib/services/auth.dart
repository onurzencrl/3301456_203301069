import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<User?> signIn(String email, String password) async {
    try {
      var user = await _auth.signInWithEmailAndPassword(
          email: email.trim(), password: password);
      return user.user;
    } catch (e) {
      return null;
    }
  }

  signOut() async {
    return await _auth.signOut();
  }

  Future<User?> createPerson(
      String kullaniciadi, String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    await _firebaseFirestore
        .collection("Person")
        .doc(user.user?.uid)
        .set({'userName': kullaniciadi, 'email': email});

    return user.user;
  }
}
