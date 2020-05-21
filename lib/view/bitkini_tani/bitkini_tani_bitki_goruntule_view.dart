import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BitkiniTaniBitkiGoruntule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text('Orkide', style: SizeConfig.yaziAppbarBaslik),
        backgroundColor: SizeConfig.almostWhite,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: SizeConfig.green, //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: new ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: <
                      Widget>[
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                  child: Container(
                    height:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/orkide.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.circular(SizeConfig.blockWidth * 2),
                    ),
                  ),
                ),
                Container(
                  height:
                      (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                          0.4,
                  width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                      0.6,
                  child: Text(
                    "Tropikal iklim seven orkidelerin küçük yaprakları ve uzun gövdeleri vardır. Orkide çiçeklerinin ince uzun gövdeleri narin oldukları hissini uyandırsada fazlasıyla dayanıklı uzun ömürlü bitkilerdir.",
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
                    padding:
                        EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Sulama",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
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
                    padding:
                        EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Toprak değişim",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      "Yılda 1, ilkbahar",
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
                    padding:
                        EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Toprak Tipi",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      "Özel orkide toprağı",
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
                    padding:
                        EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Işık ihtiyacı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      "Aydınlık sever ancak direkt ışık almamalı",
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
                    padding:
                        EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Isı ihtiyacı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      "20 - 30 derece",
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
                    padding:
                        EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Notlar",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      "Şeffaf saksıda durmalı köklerin güneşe ihtiyacı var.",
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
