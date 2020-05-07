import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class BlogProfilDuzenle extends StatefulWidget {
  @override
  _BlogProfilDuzenleState createState() => _BlogProfilDuzenleState();
}

class _BlogProfilDuzenleState extends State<BlogProfilDuzenle> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Profili Düzenle',
          style: SizeConfig.yaziAppbarBaslik,
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
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "İsim",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 6),
                      child: Theme(
                          data: new ThemeData(
                            primaryColor: Colors.green[900],
                            primaryColorDark: Colors.green[900],
                          ),
                          child: TextFormField(
                            autofocus: false,
                            cursorColor: Colors.green[900],
                            initialValue: 'Minel',
                            decoration: InputDecoration(
                              fillColor: Colors.green[900],
                              labelStyle: SizeConfig.yaziWidgetIci,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey[50])),
                            ),
                          ))),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Kullanıcı adı",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 6),
                      child: Theme(
                          data: new ThemeData(
                            primaryColor: Colors.green[900],
                            primaryColorDark: Colors.green[900],
                          ),
                          child: TextFormField(
                            autofocus: false,
                            cursorColor: Colors.green[900],
                            initialValue: 'minelsaygisever',
                            decoration: InputDecoration(
                              fillColor: Colors.green[900],
                              labelStyle: SizeConfig.yaziWidgetIci,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey[50])),
                            ),
                          ))),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bio",
                        style: SizeConfig.yaziAciklamaBaslik,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 6),
                      child: Theme(
                          data: new ThemeData(
                            primaryColor: Colors.green[900],
                            primaryColorDark: Colors.green[900],
                          ),
                          child: TextFormField(
                            autofocus: false,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            cursorColor: Colors.green[900],
                            initialValue: 'Welcome to my green world!',
                            decoration: InputDecoration(
                              fillColor: Colors.green[900],
                              labelStyle: SizeConfig.yaziWidgetIci,
                              border: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey[50])),
                            ),
                          ))),


                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2,  bottom: SizeConfig.blockWidth * 2),
                    child: Container(
                      height: SizeConfig.blockWidth * 8,
                      width: SizeConfig.blockWidth * 24,
                      child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text(
                              "Düzenle",
                              style: SizeConfig.yaziButon,
                            ),
                          ),
                          color: Colors.green[900],
                          shape: StadiumBorder()
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
