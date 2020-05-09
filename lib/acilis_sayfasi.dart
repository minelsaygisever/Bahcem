import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'main.dart';
import 'login_sayfasi.dart';

class AcilisSayfasi extends StatefulWidget {
  @override
  _AcilisSayfasiState createState() => _AcilisSayfasiState();
}

class _AcilisSayfasiState extends State<AcilisSayfasi> {
  @override
  void initState(){
    super.initState();

    //_mockCheckForSession true dönerse status true oluyor, false dönerse status false oluyor
    _mockCheckForSession().then(
            (status) {
          if (status) {
            _navigateToHome();
          } else {
            _navigateToLogin();
          }
        }
    );
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});

    return false; //bu kısmı giriş yapılmış mı yapılmamış mı ona göre döndürürüz
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage()
        )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => LoginSayfasi()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        color: SizeConfig.green, //ekranın arka plan rengi
        child: Center(
          child: Text(
            "Bahçem",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: SizeConfig.almostWhite,
              fontFamily: "Photoshoot",
              fontSize: SizeConfig.blockWidth * 13,
              shadows: <Shadow> [
                Shadow(
                  offset: Offset(SizeConfig.blockWidth * 0.5,
                      SizeConfig.blockWidth * 0.5),
                  blurRadius: 5.0,
                  color: Color.fromARGB(60, 0, 0, 0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


}