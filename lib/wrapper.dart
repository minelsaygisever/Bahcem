import 'package:bahcem_deneme/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bahcem_sayfasi.dart';
import 'authenticate/authenticate.dart';
import 'models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return either the Bahcem or login widget
    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    //return Authenticate();
    if (user == null){
      return Authenticate();
    }
    else {
      return MyHomePage();
    }

  }
}