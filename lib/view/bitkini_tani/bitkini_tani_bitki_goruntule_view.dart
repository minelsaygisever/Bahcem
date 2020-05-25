import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bitkini_tani_view.dart';

class BitkiniTaniBitkiGoruntule extends StatelessWidget {

  final DetailPlant detailPlant;

  BitkiniTaniBitkiGoruntule({this.detailPlant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title:
            Text(detailPlant.bitkiAdi, style: SizeConfig.yaziAppbarBaslik),
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
                        image: NetworkImage("${detailPlant.url}"),
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
                  child: ListView(
                    children: <Widget>[
                      Text("${detailPlant.aciklama}",
                          style: SizeConfig.yaziAciklama)
                    ],
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
                          0.4,
                      child: Text(
                        "Sulama",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.6,
                    child: Text(
                      "${detailPlant.sulama}",
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
                          0.4,
                      child: Text(
                        "Toprak değişim",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.6,
                    child: Text(
                      "${detailPlant.toprakDegisim}",
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
                          0.4,
                      child: Text(
                        "Toprak Tipi",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.6,
                    child: Text(
                      "${detailPlant.toprakTipi}",
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
                          0.4,
                      child: Text(
                        "Işık ihtiyacı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.6,
                    child: Text(
                      "${detailPlant.isikIhtiyaci}",
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
                          0.4,
                      child: Text(
                        "Isı ihtiyacı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.6,
                    child: Text(
                      "${detailPlant.isiIhtiyaci}",
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
                          0.4,
                      child: Text(
                        "Notlar",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.6,
                    child: Text(
                      "${detailPlant.notlar}",
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
