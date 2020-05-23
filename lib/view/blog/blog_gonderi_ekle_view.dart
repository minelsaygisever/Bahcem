import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogGonderiEkle extends StatefulWidget {
  @override
  _BlogGonderiEkleState createState() => _BlogGonderiEkleState();
}

class _BlogGonderiEkleState extends State<BlogGonderiEkle> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0.0),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => selectImage(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: SizeConfig.screenWidth -
                              (SizeConfig.blockWidth * 8),
                          width: SizeConfig.screenWidth -
                              (SizeConfig.blockWidth * 8),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: SizeConfig.almostWhite,
                              width: 0,
                            ),
                            color: SizeConfig.almostWhite,
                          ),
                          child: Image(
                            image: AssetImage('assets/icons/postdef.png'),
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    cursorColor: SizeConfig.green,
                    decoration: InputDecoration(
                      hintText: 'Düşüncelerin...',
                      hintStyle: SizeConfig.yaziHint,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: SizeConfig.green,
                        ),
                      ),
                    ),
                    style: SizeConfig.yaziAciklama,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.blockWidth * 4,
                        bottom: SizeConfig.blockWidth * 2),
                    child: Container(
                      height: SizeConfig.blockWidth * 8,
                      width: SizeConfig.blockWidth * 26,
                      child: FlatButton(
                          onPressed: () {},
                          child: Container(
                            child: Text(
                              "Paylaş",
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

  Future selectImage() {
      print("hello");
  }
}
