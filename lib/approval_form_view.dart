import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Value/color.dart';
import 'approval_view.dart';

class ApprovalFormView extends StatefulWidget {
  const ApprovalFormView({Key? key}) : super(key: key);

  @override
  _ApprovalFormViewState createState() => _ApprovalFormViewState();
}

class _ApprovalFormViewState extends State<ApprovalFormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorPallete.red_background,
          foregroundColor: ColorPallete.white,
          elevation: 0,
          title: Text("Approval Reservasi",
              textAlign: TextAlign.left,
              style: TextStyle( fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorPallete.white
              )
          )
      ),
      body:  SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child:Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Form Permintaan Barang",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorPallete.black,
                                  fontWeight: FontWeight.bold
                              )),
                          SizedBox(height: 12),
                        ],
                      ),
                    ),
                    ApprovalReservasi()
                  ],
                )
            )
        ),
      ),
    );
  }

  Widget ApprovalReservasi() {
    return Container(
      height: 40,
      width: double.infinity,
      margin: EdgeInsets.only(top: 370, bottom: 20,right: 10, left: 10),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: ColorPallete.red_background.withOpacity(0.4),
                blurRadius: 5.0,
                spreadRadius: 1.0
            )
          ],
          borderRadius: const BorderRadius.all(
              Radius.circular(8.0)
          ),
          color: ColorPallete.white
      ),
      child: Container(
        child: ElevatedButton(
            child: Text("APPROVAL RESERVASI", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
            style: ButtonStyle(
              // shadowColor:  MaterialStateProperty.all<Color>(ColorPallete.colorPrimary),
                elevation: MaterialStateProperty.all(0),
                foregroundColor:
                MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                MaterialStateProperty.all<Color>(ColorPallete.red_background),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(color: ColorPallete.red_background)))),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Approval()));
            }
        ),
      ),
    );
  }
}
