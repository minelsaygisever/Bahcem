import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HakkindaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Hakkında',
          style: SizeConfig.yaziAppbarBaslik,
        ),
        backgroundColor: SizeConfig.almostWhite,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: SizeConfig.green, //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\nBu uygulama Esra Polat, Nur Deniz Çaylı ve Minel Saygısever tarafından geliştirilmiştir.\nTüm Hakları Saklıdır.\n\nBizimle iletişime geçin:\ninfo@bahcemapp.com",
                textDirection: TextDirection.ltr,
                style: SizeConfig.yaziAciklama,
              ),
            )
          ],
        ),
      ),
    );
  }
}
