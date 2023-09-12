import 'package:alista/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Value/color.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 20),
            width: 420,
            decoration: const BoxDecoration(
              color: ColorPallete.red_background,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text("Profil",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: ColorPallete.black)),
                SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      'assets/images/user.png',
                      fit: BoxFit.fitHeight,
                      color: Colors.black54,
                    )),
                SizedBox(height: 4),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("Nama"),
                    SizedBox(
                      width: 100,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 4,
                    ),

                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text("No. Handphone"),
                    SizedBox(
                      width: 36,
                    ),
                    Text(" :"),
                    SizedBox(
                      width: 4,
                    ),

                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text("No.KTP"),
                    SizedBox(
                      width: 90,
                    ),
                    Text(":"),
                    SizedBox(
                      width: 4,
                    ),

                  ],
                ),
                SizedBox(height: 8),

              ],
            ),
          ),
          Center(
            child: LogoutButton(context),
          )
        ]),
      ),
    );
  }

  Widget LogoutButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20,top: 100, right: 20, left: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: ColorPallete.red_background.withOpacity(0.4),
                blurRadius: 5.0,
                spreadRadius: 1.0)
          ],
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          color: ColorPallete.white),
      child: Container(
        height: 50,
        child: ElevatedButton(
            child: Text("Sign Out",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ColorPallete.red_background)),
            style: ButtonStyle(
              // shadowColor:  MaterialStateProperty.all<Color>(ColorPallete.colorPrimary),
                elevation: MaterialStateProperty.all(0),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                MaterialStateProperty.all<Color>(ColorPallete.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: ColorPallete.red_background)))),
            onPressed: () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (_) {
                return LoginView();
              }));
            }),
      ),
    );
  }
}
