import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogProfilDuzenle extends StatefulWidget {
  @override
  _BlogProfilDuzenleState createState() => _BlogProfilDuzenleState();
}

class _BlogProfilDuzenleState extends State<BlogProfilDuzenle> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Profili Düzenle',
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
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/minel.jpg'),
                        radius: SizeConfig.blockWidth * 16,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: FlatButton(
                            onPressed: () {
                              /*...*/
                            },
                            child: Text(
                              "Profil Fotoğrafını Değiştir",
                              textAlign: TextAlign.center,
                              style: SizeConfig.yaziAciklamaBaslik,
                            ),
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockWidth * 2, 0, 0, 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "İsim",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0,
                          SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 6),
                      child: Theme(
                          data: new ThemeData(
                            primaryColor: SizeConfig.green,
                            primaryColorDark: SizeConfig.green,
                          ),
                          child: TextFormField(
                            autofocus: false,
                            cursorColor: SizeConfig.green,
                            initialValue: 'Minel',
                            decoration: InputDecoration(
                              fillColor: SizeConfig.green,
                              labelStyle: SizeConfig.yaziWidgetIci,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: SizeConfig.almostWhite)),
                            ),
                          ))),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockWidth * 2, 0, 0, 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kullanıcı adı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0,
                          SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 6),
                      child: Theme(
                          data: new ThemeData(
                            primaryColor: SizeConfig.green,
                            primaryColorDark: SizeConfig.green,
                          ),
                          child: TextFormField(
                            autofocus: false,
                            cursorColor: SizeConfig.green,
                            initialValue: 'minelsaygisever',
                            decoration: InputDecoration(
                              fillColor: SizeConfig.green,
                              labelStyle: SizeConfig.yaziWidgetIci,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: SizeConfig.almostWhite)),
                            ),
                          ))),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.blockWidth * 2, 0, 0, 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bio",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0,
                          SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 6),
                      child: Theme(
                          data: new ThemeData(
                            primaryColor: SizeConfig.green,
                            primaryColorDark: SizeConfig.green,
                          ),
                          child: TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            cursorColor: SizeConfig.green,
                            initialValue: 'Welcome to my green world!',
                            decoration: InputDecoration(
                              fillColor: SizeConfig.green,
                              labelStyle: SizeConfig.yaziWidgetIci,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: SizeConfig.almostWhite)),
                            ),
                          ))),
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.blockWidth * 2,
                        bottom: SizeConfig.blockWidth * 2),
                    child: Container(
                      height: SizeConfig.blockWidth * 8,
                      width: SizeConfig.blockWidth * 26,
                      child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text(
                              "Düzenle",
                              style: SizeConfig.yaziButon,
                            ),
                          ),
                          color: SizeConfig.green,
                          shape: StadiumBorder()),
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
