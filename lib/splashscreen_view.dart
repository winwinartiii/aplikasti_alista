import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Value/color.dart';
import 'Value/index.dart';
import 'home_view.dart';
import 'login_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  late bool _isLoggedIn;
  @override
  void initState() {
    super.initState();
    Splashscreen();

  }



  // Future checkLogin() async {
  //   var uIsLoggedIn = await _session.checkLogin(Session.userLoggedIn);
  //   setState(() {
  //     _isLoggedIn = uIsLoggedIn;
  //   });
  // }

  Splashscreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginView();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    ColorPallete.red_background,
                    Colors.white,
                    Colors.white
                  ])
          ),
          child:  Center(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: 250,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
