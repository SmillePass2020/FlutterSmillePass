// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

Future<String> linkGoogleAndTwitter() async {
  await Firebase.initializeApp();
  final GoogleSignIn _googleSingIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  // Trigger the Google Authentication flow.
  final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();
  // Obtain the auth details from the request.
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
  // Create a new credential.
  final AuthCredential googleCredential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  final user = (await _auth.signInWithCredential(googleCredential)).user;

  return user.email;
}

Future<void> cerrar() async {
  await FirebaseAuth.instance.signOut();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        automaticallyImplyLeading: false,
        middle: Text("Smille Pass"),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("assets/imagenes/logo_Login.png"),
            ),
            CupertinoButton.filled(
              child: Text(
                "Login",
              ),
              onPressed: () async {
                var result = await linkGoogleAndTwitter();
                if (result != null) {
                  Navigator.pushReplacementNamed(context, 'home');
                } else {
                  print('In Builder');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
