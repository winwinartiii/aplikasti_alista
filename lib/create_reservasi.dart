import 'package:alista/file_list.dart';
import 'package:alista/reservasi_view.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Value/color.dart';
import 'package:open_file/open_file.dart';


class CreateReservasiView extends StatefulWidget {
  const CreateReservasiView({Key? key}) : super(key: key);

  @override
  _CreateReservasiViewState createState() => _CreateReservasiViewState();
}

class _CreateReservasiViewState extends State<CreateReservasiView> {
  final _formKey = GlobalKey<FormState>();
  String fileType = 'All';
  var fileTypeList = ['All', 'Image', 'Video', 'Audio','MultipleFile'];
  FilePickerResult? result;
  PlatformFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorPallete.red_background,
          foregroundColor: ColorPallete.white,
          elevation: 0,
          title: Text("Create Reservasi",
              textAlign: TextAlign.left,
              style: TextStyle( fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: ColorPallete.white
              )
          )
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child:Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Container(
                     margin: EdgeInsets.only(bottom: 40),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Create Reservasi",
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
                                 Text("Tanggal Pengambilan",
                                     style: TextStyle(
                                         fontSize: 12,
                                         color: ColorPallete.black,
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
                                 Text("Gudang Pengambilan",
                                     style: TextStyle(
                                         fontSize: 12,
                                         color: ColorPallete.black,
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
                                         color: ColorPallete.red_background,
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
                                 SizedBox(width: 74,),
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
                                 SizedBox(width: 56,),

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
                                 Text("Lokasi Project",
                                     style: TextStyle(
                                         fontSize: 12,
                                         color: ColorPallete.black,
                                     )),
                                 SizedBox(width: 48,),

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
                                 Text("Evident File",
                                     style: TextStyle(
                                         fontSize: 12,
                                         color: ColorPallete.black,
                                     )),
                                 SizedBox(width: 65,),
                                 Expanded(child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
                                   children: [
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.center,
                                       children: [
                                         DropdownButton(
                                           value: fileType,
                                           items: fileTypeList.map((String type) {
                                             return DropdownMenuItem(
                                                 value: type,
                                                 child: Text(
                                                   type,
                                                   style: TextStyle(fontSize: 12),
                                                 ));
                                           }).toList(),
                                           onChanged: (String? value) {
                                             setState(() {
                                               fileType = value!;
                                               file = null;
                                             });
                                           },
                                         ),
                                         ElevatedButton(
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
                                           onPressed: () async {
                                             pickFiles(fileType);
                                           },
                                           child: Text('Chosen File'),
                                         ),
                                       ],
                                     ),
                                     if (file != null) fileDetails(file!),
                                     if (file != null)
                                       ElevatedButton(onPressed: (){viewFile(file!);},child: Text('View Selected File'),)
                                   ],
                                 ))
                               ],
                             ),
                           ],
                         ),
                       ],
                     ),
                   ),
                   Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Material Detail",
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
                                  Text("ID Material",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 68,),
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
                                  Text("Nama Material",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 44,),
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
                                  Text("Jumlah",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 86,),

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
                                  Text("Satuan",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: ColorPallete.black,
                                      )),
                                  SizedBox(width: 86,),

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

                    SaveCreateReservasi()
                  ],
                )
            )
        ),
      ),
    );
  }

  Widget SaveCreateReservasi() {
    return Container(
      height: 40,
      width: double.infinity,
      margin: EdgeInsets.only(top: 60, bottom: 40,right: 10, left: 10),
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
            child: Text("SAVE", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600)),
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
                          ReservasiView()));
            }
        ),
      ),
    );
  }

  Widget fileDetails(PlatformFile file){
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final size  = (mb>=1)?'${mb.toStringAsFixed(2)} MB' : '${kb.toStringAsFixed(2)} KB';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('File Name: ${file.name}'),
          Text('File Size: $size'),
          Text('File Extension: ${file.extension}'),
          Text('File Path: ${file.path}'),
        ],
      ),
    );

  }

  void pickFiles(String? filetype) async {
    switch (filetype) {
      case 'Image':
        result = await FilePicker.platform.pickFiles(type: FileType.image);
        if (result == null) return;
        file = result!.files.first;
        setState(() {});
        break;
      case 'Video':
        result = await FilePicker.platform.pickFiles(type: FileType.video);
        if (result == null) return;
        file = result!.files.first;
        setState(() {});
        break;

      case 'Audio':
        result = await FilePicker.platform.pickFiles(type: FileType.audio);
        if (result == null) return;
        file = result!.files.first;
        setState(() {});
        break;
      case 'All':
        result = await FilePicker.platform.pickFiles();
        if (result == null) return;
        file = result!.files.first;
        setState(() {});
        break;
      case 'MultipleFile':
        result = await FilePicker.platform.pickFiles(allowMultiple: true);
        if (result == null) return;
        loadSelectedFiles(result!.files);
        break;
    }
  }

  // multiple file selected
  // navigate user to 2nd screen to show selected files
  void loadSelectedFiles(List<PlatformFile> files){
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => FileList(files: files, onOpenedFile:viewFile ))
    );
  }

  // open the picked file
  void viewFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

}
