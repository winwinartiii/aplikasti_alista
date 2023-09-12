import 'package:alista/approval_view.dart';
import 'package:alista/profil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Value/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPallete.red_background,
        leading: Container(),
        elevation: 0,
        centerTitle: true,
        title:Text("ALISTA",
            style: TextStyle(
                fontSize: 16,
                color: ColorPallete.white,
                fontWeight: FontWeight.bold
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 20),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                child: Card(
                    margin: EdgeInsets.only(right: 20,bottom: 60),
                    child: Container(
                      margin: EdgeInsets.only(right: 8,left: 8, top: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Selamat Pagi",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ColorPallete.black,
                                      fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height: 4),
                              Text("Virdyawan Eka Prayoga",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorPallete.black,
                                  )),
                              SizedBox(height: 8),
                              Text("Cibitung",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorPallete.black,
                                  )),
                            ],
                          ),
                          Image.asset('assets/images/profil.png',height: 50,width: 50,),
                        ],
                      ),
                    )
                ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Profil()));
                  }
              ),
              Text("Reservasi yang belum di approval  :",
                  style: TextStyle(
                      fontSize: 16,
                      color: ColorPallete.black,
                      fontWeight: FontWeight.bold
                  )),
              InkWell(
                child: Card(
                    color: Colors.amber,
                    margin: EdgeInsets.only(right: 20, top: 20),
                    child: Container(
                      margin: EdgeInsets.only(right: 8,left: 8, top: 8, bottom: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("(1)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: ColorPallete.red,
                                      fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height: 4),
                              Text("Reservasi yang belum di approval",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorPallete.red,
                                  )),
                            ],
                          ),
                          Image.asset('assets/images/kotak.png',height: 50,width: 50,),
                        ],
                      ),
                    )
                ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Approval()));
                  }
              ),
            ],
          )
        ),
      ),
    );
  }
}
