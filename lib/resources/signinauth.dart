import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:uuid/uuid.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<bool> signInWithGoogle(BuildContext context) async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      UserCredential cred =
      await FirebaseAuth.instance.signInWithCredential(credential);
      if (cred.user != null) {
        String message = await uploadUserDetails(
            username: cred.user!.displayName!, email: cred.user!.email!);
        return (message == 'Success') ? true : false;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future<String> uploadUserDetails({
    required String username,
    required String email,
  }) async {
    String res = 'some error occured';
    try {
      // Now All Data Uploading to firebase
      String postId = const Uuid().v1();
      _firestore.collection('User').doc(postId).set({
        'username': username,
        'email': email,
      });
      res = 'Success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  void signOut() {
    try {
      _auth.signOut();
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
