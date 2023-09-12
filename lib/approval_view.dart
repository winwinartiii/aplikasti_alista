import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Value/color.dart';
import 'approval_form_view.dart';

class Approval extends StatefulWidget {
  const Approval({Key? key}) : super(key: key);

  @override
  _ApprovalState createState() => _ApprovalState();
}

class _ApprovalState extends State<Approval> {
  final _formKey = GlobalKey<FormState>();

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
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Approval Reservasi",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: ColorPallete.black,
                                  fontWeight: FontWeight.bold
                              )),
                          SizedBox(height: 12),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("Reservasi ID",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 38,),
                                  Expanded(child:TextFormField(
                                    maxLines: 1,
                                    style: TextStyle(color: ColorPallete.black,fontSize: 12),
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: ColorPallete.textfild,
                                      isDense: true,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: ColorPallete.sgb_navy,
                                          width: 2.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                          width: 1.0,
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: ColorPallete.grey),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                          width: 1.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text("Project ID",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 54,),
                                  Expanded(child:TextFormField(
                                    maxLines: 1,
                                    style: TextStyle(color: ColorPallete.black,fontSize: 12),
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: ColorPallete.textfild,
                                      isDense: true,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: ColorPallete.sgb_navy,
                                          width: 2.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                          width: 1.0,
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: ColorPallete.grey),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text("NIK Pemakai",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 36,),

                                  Expanded(child:TextFormField(
                                    maxLines: 1,
                                    style: TextStyle(color: ColorPallete.black,fontSize: 12),
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: ColorPallete.textfild,
                                      isDense: true,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: ColorPallete.sgb_navy,
                                          width: 2.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                          width: 1.0,
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: ColorPallete.grey),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                children: [
                                  Text("Nama Gudang",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 28,),

                                  Expanded(child:TextFormField(
                                    maxLines: 1,
                                    style: TextStyle(color: ColorPallete.black,fontSize: 12),
                                    keyboardType: TextInputType.text,
                                    autofocus: false,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: ColorPallete.textfild,
                                      isDense: true,
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: ColorPallete.sgb_navy,
                                          width: 2.0,
                                        ),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: const BorderSide(
                                          color: Colors.redAccent,
                                          width: 1.0,
                                        ),
                                      ),
                                      hintStyle: TextStyle(color: ColorPallete.grey),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                          width: 2.0,
                                        ),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8.0),
                                        borderSide: BorderSide(
                                          color: ColorPallete.textfild,
                                        ),
                                      ),
                                    ),
                                  ))
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CekPermintaanBarang()
                  ],
                )
            )
        ),
      ),
    );
  }

  Widget CekPermintaanBarang() {
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
            child: Text("Cek Permintaan Barang", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ApprovalFormView()));
            }
        ),
      ),
    );
  }
}
