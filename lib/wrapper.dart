import 'package:bahcem_deneme/authenticate/authenticate.dart';
import 'package:bahcem_deneme/main.dart';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return either the Bahcem or login widget
    final user = Provider.of<AuthModel>(context);

    // return either the Home or Authenticate widget
    //return Authenticate();
    if (user == null) {
      return Authenticate();
    } else {
      return MyHomePage();
    }
  }
}
