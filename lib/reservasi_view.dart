import 'package:alista/create_reservasi.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Value/color.dart';

class ReservasiView extends StatefulWidget {
  const ReservasiView({Key? key}) : super(key: key);

  @override
  _ReservasiViewState createState() => _ReservasiViewState();
}

class _ReservasiViewState extends State<ReservasiView> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPallete.red_background,
        leading: Container(),
        elevation: 0,
        title:Text("List Reservasi",
            style: TextStyle(
                fontSize: 16,
                color: ColorPallete.white,
                fontWeight: FontWeight.bold
            )),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child:Form(
              key: _formKey,
              child: Column(
                children: [
                  Card(
                      margin: EdgeInsets.only(right: 20,bottom: 20),
                      child: Container(
                        margin: EdgeInsets.only(right: 8,left: 8, top: 8, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Reservasi ID",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                        fontWeight: FontWeight.bold
                                    )),
                                SizedBox(width: 8,),
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
                                    hintText: 'reservasi id',
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
                                        fontWeight: FontWeight.bold
                                    )),
                                SizedBox(width: 24,),
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
                                    hintText: 'project id',
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
                                        fontWeight: FontWeight.bold
                                    )),
                                SizedBox(width: 6,),

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
                                    hintText: 'NIK Pemakai',
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
                                Text("No.RSV",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                        fontWeight: FontWeight.bold
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
                                    hintText: 'No.RSV',
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
                      )
                  ),
                  Card(
                      margin: EdgeInsets.only(right: 20,bottom: 20),
                      child: Container(
                        margin: EdgeInsets.only(right: 8,left: 8, top: 8, bottom: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text("Reservasi ID",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                        fontWeight: FontWeight.bold
                                    )),
                                SizedBox(width: 8,),

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
                                    hintText: 'reservasi id',
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
                                        fontWeight: FontWeight.bold
                                    )),
                                SizedBox(width: 24,),

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
                                    hintText: 'project id',
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
                                        fontWeight: FontWeight.bold
                                    )),
                                SizedBox(width: 6,),

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
                                    hintText: 'NIK Pemakai',
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
                                Text("No.RSV",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: ColorPallete.black,
                                        fontWeight: FontWeight.bold
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
                                    hintText: 'No.RSV',
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
                      )
                  ),
                  CreateReservasi()
                ],
              )
            )
        ),
      ),
    );
  }

  Widget CreateReservasi() {
    return Container(
      height: 50,
      width: 180,
      margin: EdgeInsets.only(top: 40, bottom: 50, left: 160),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[
          ElevatedButton(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/plus.png',
                  width: 12,
                ),
                 Text("   Create Reservasi", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
              ],
            ),
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
                          CreateReservasiView()));
            }
        ),],
      ),
    );
  }

}
