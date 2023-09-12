import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Value/color.dart';
import 'home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  late bool _isLoginForm;
  String _isStatus = 'init';
  String _isMsg = '';
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:_isStatus == 'PROCCESS'
            ? Center(child: ShowForm(),
        ):ShowForm()
    );
  }

  Widget ShowForm() {
    return  Container(
        padding: const EdgeInsets.only(left: 40.0, right: 40.0, top: 25.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(child:
              SingleChildScrollView(
                child: Column(
                  children: [
                    logoWidget(),
                    const SizedBox(height: 48,),
                    userInputWidget(),
                    const SizedBox(height: 16,),
                    passwordInputWidget(),
                    const SizedBox(height: 24,),
                    loginButton(),
                  ],
                ),
                physics: const BouncingScrollPhysics(),
              )
              ),

            ],
          ),
        )
    );
  }

  Widget logoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 150,),
        Image.asset('assets/images/logo.png',height: 50,width: 250,),
        // Text('MOBILE COURIER',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: ColorPallete.white), textAlign: TextAlign.center,),
      ],
    );
  }

  Widget userInputWidget() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(8.0)
        ),
      ),
      child: TextFormField(
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
          hintText: 'Username',
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
        onSaved: (value) => _email = value!.trim(),
        validator: (value) =>
        value!.isEmpty ? 'Enter a valid password' : null,
      ),
    );
  }

  Widget passwordInputWidget() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
            Radius.circular(8.0)
        ),

      ),
      child: TextFormField(
        maxLines: 1,
        style: TextStyle(color: ColorPallete.black,fontSize: 12),
        keyboardType: TextInputType.text,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPallete.textfild,
          isDense: true,
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: ColorPallete.textfild,
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
          hintText: 'Password',
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
        onSaved: (value) => _password = value!.trim(),
        validator: (value) =>
        value!.isEmpty ? 'Enter a valid password' : null,
      ),
    );
  }

  Widget loginButton() {
    return Container(
      width: double.infinity,
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
        height: 40,
        width: 80,
        child: ElevatedButton(
            child: const Text("Login", style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)),
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
                          HomeView()));
            }
        ),
      ),
    );
  }
}
