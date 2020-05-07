import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class HakkindaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Hakkında',
          style: TextStyle(
            fontFamily: "Champagne-Limousines-Bold",
            fontSize: SizeConfig.blockWidth * 6,
            color: Colors.green[900],
          ),
        ),
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green[900], //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\nBu uygulama Esra Polat, Nur Deniz Çaylı ve Minel Saygısever tarafından geliştirilmiştir.\nTüm Hakları Saklıdır.\n\nBizimle iletişime geçin:\ninfo@bahcemapp.com",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: "Champagne-Limousines-Bold",
                  fontSize: SizeConfig.blockWidth * 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}