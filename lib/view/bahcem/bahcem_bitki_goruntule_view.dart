import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/view/bahcem/bahcem_sayfasi_view.dart';
import 'bahcem_bitki_duzenle_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bahcem_bitki_duzenle_view.dart';

class BahcemBitkiGoruntule extends StatelessWidget {
  final BahcemDetailPlant bahcemDetailPlant;

  BahcemBitkiGoruntule({this.bahcemDetailPlant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text(
          bahcemDetailPlant.bitkininAdi,
          style: SizeConfig.yaziAppbarBaslik,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BahcemBitkiDuzenle(
                          bahcemDetailPlant.albumUrl,
                          bahcemDetailPlant.bitkininAdi,
                          bahcemDetailPlant.hatirlatici,
                          bahcemDetailPlant.isiIhtiyaci,
                          bahcemDetailPlant.isikIhtiyaci,
                          bahcemDetailPlant.notlar,
                          bahcemDetailPlant.profilImgUrl,
                          bahcemDetailPlant.sulama,
                          bahcemDetailPlant.toprakDegisim,
                          bahcemDetailPlant.toprakTipi,
                          bahcemDetailPlant.userId,
                          bahcemDetailPlant.bitkiId)),
                );
              },
              child: Icon(
                Icons.edit,
                size: SizeConfig.blockWidth * 7,
                color: SizeConfig.green,
              ),
            ),
          ),
        ],
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
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: <
                      Widget>[
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                  child: Container(
                    height:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.3,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("${bahcemDetailPlant.profilImgUrl}"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                          BorderRadius.circular(SizeConfig.blockWidth * 1.5),
                    ),
                  ),
                ),
                Container(
                  height:
                      (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                          0.3,
                  width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                      0.7,
                  child: Text(
                    bahcemDetailPlant.notlar,
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
                      alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      bahcemDetailPlant.sulama,
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
                      alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      bahcemDetailPlant.toprakDegisim,
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
                      alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      bahcemDetailPlant.toprakTipi,
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
                      alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      bahcemDetailPlant.isikIhtiyaci,
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
                      alignment: Alignment.topLeft,
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
                    alignment: Alignment.topLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      bahcemDetailPlant.isiIhtiyaci,
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
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth -
                              SizeConfig.blockWidth * 12) *
                          0.5,
                      child: Text(
                        "Hatırlatıcılar",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.5,
                    child: Text(
                      bahcemDetailPlant.hatirlatici,
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
