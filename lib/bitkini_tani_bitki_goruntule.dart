import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class BitkiniTaniBitkiGoruntule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: SizeConfig.blockWidth),
          child: Text(
            'Orkide',
            style: TextStyle(
              fontFamily: "Champagne-Limousines-Bold",
              fontSize: SizeConfig.blockWidth * 6,
              color: Colors.green[900],
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green[900], //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: new ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                      child: Container(
                        height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                        width:  (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/orkide.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                        ),
                      ),
                    ),
                    Container(
                      height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                      width:  (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.6,
                      child: Text(
                        "Tropikal iklim seven orkidelerin küçük yaprakları ve uzun gövdeleri vardır. Orkide çiçeklerinin ince uzun gövdeleri narin oldukları hissini uyandırsada fazlasıyla dayanıklı uzun ömürlü bitkilerdir.",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 4.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Sulama",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "3 günde bir",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak değişim",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Yılda 1, ilkbahar",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak Tipi",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Özel orkide toprağı",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Işık ihtiyacı",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Aydınlık sever ancak direkt ışık almamalı",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Isı ihtiyacı",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "20 - 30 derece",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Notlar",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Şeffaf saksıda durmalı köklerin güneşe ihtiyacı var.",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
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