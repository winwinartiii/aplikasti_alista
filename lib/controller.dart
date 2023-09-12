import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthControllet extends StatefulWidget {
  const AuthControllet({Key? key}) : super(key: key);

  @override
  _AuthControlletState createState() => _AuthControlletState();

}

class _AuthControlletState extends State<AuthControllet> {
  FirebaseAuth auth = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
