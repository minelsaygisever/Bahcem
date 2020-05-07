import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class BlogGonderiEkle extends StatefulWidget {
  @override
  _BlogGonderiEkleState createState() => _BlogGonderiEkleState();
}

class _BlogGonderiEkleState extends State<BlogGonderiEkle> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Gönderi Ekle',
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
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: SizeConfig.screenWidth - (SizeConfig.blockWidth * 8),
                        width: SizeConfig.screenWidth - (SizeConfig.blockWidth * 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey[50],
                            width: 0,
                          ),
                          color: Colors.grey[50],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(SizeConfig.blockWidth * 20),
                          child: Image(
                            image: AssetImage('assets/icons/postdef.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),

                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    cursorColor: Colors.green[900],
                    decoration: InputDecoration(
                      hintText: 'Düşüncelerin...',
                      hintStyle: SizeConfig.yaziHint,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                    style: SizeConfig.yaziAciklama,
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4, bottom: SizeConfig.blockWidth * 2),
                    child: Container(
                      height: SizeConfig.blockWidth * 8,
                      width: SizeConfig.blockWidth * 24,
                      child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text(
                              "Paylaş",
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
