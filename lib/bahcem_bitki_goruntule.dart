import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'custom_switch.dart';
import 'main.dart';
import 'bahcem_bitki_duzenle.dart';

class BahcemBitkiGoruntule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:  AppBar(
        title: Text(
          'Ponsetya 1',
          style: SizeConfig.yaziAppbarBaslik,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BahcemBitkiDuzenle()),),
              child: Icon(
                Icons.edit,
                size: SizeConfig.blockWidth * 7,
                color: Colors.green[900],
              ),
            ),
          ),
        ],
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                  child: Container(
                    height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 1.5),
                    ),
                  ),
                ),
                Container(
                  height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                  width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.7,
                  child: Text(
                    "Zeynep'in kendisi kadar zarif hediyesi <3",
                    style: SizeConfig.yaziAciklama,
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Sulama",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "3 günde bir",
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak değişim",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "6 ayda bir",
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak Tipi",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Torflu",
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Işık ihtiyacı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Çok ışıklı ortam",
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Isı ihtiyacı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "20 - 22 derece",
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                child: Text(
                  "Fotoğraf Albümü",
                  style: SizeConfig.yaziAciklamaBaslik,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2),
                  child: Container(
                    height: SizeConfig.blockWidth * 20,
                    width: SizeConfig.blockWidth * 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2),
                  child: Container(
                    height: SizeConfig.blockWidth * 20,
                    width: SizeConfig.blockWidth * 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya-saksi.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                    EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Hatırlatıcılar",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Açık",
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}