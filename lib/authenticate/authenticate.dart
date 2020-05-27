import 'package:bahcem_deneme/view/login/login_sayfasi_view.dart';
import 'package:bahcem_deneme/view/login/register_sayfasi_view.dart';
import 'package:flutter/material.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;
  void toggleView(){
    setState(() => showSignIn = !showSignIn);
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return LoginSayfasi(toggleView:  toggleView);
    } else {
      return RegisterSayfasi(toggleView:  toggleView);
    }
  }
}