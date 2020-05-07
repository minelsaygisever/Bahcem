import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'main.dart';

class RegisterSayfasi extends StatefulWidget {
  @override
  _RegisterSayfasiState createState() => _RegisterSayfasiState();
}

class _RegisterSayfasiState extends State<RegisterSayfasi> {
  final formKey = GlobalKey<FormState>();
  final _kullaniciAdi = TextEditingController();
  final _sifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: ListView(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight - SizeConfig.safeAreaHorizontal,
            width: SizeConfig.screenWidth - SizeConfig.safeAreaVertical,
            child: Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 6, 0, SizeConfig.blockWidth * 6, 0),
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, SizeConfig.blockWidth * 6),
                          child: Text(
                            "Bahçem",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                              color: Colors.green[900],
                              fontFamily: "Photoshoot",
                              fontSize: SizeConfig.blockWidth * 13,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(SizeConfig.blockWidth * 0.5,
                                      SizeConfig.blockWidth * 0.5),
                                  blurRadius: 5.0,
                                  color: Color.fromARGB(60, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 3, left: SizeConfig.blockWidth * 6, right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                                cursorColor: Colors.green[900],
                                controller: _kullaniciAdi,
                                decoration: InputDecoration(
                                  hintText: "E-Posta",
                                  hintStyle: SizeConfig.yaziHint,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                      color: Colors.green[900],
                                    ),
                                  ),

                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return "Boş geçilemez";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 3, left: SizeConfig.blockWidth * 6, right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                                cursorColor: Colors.green[900],
                                controller: _kullaniciAdi,
                                decoration: InputDecoration(
                                  hintText: "Kullanıcı adı",
                                  hintStyle: SizeConfig.yaziHint,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                      color: Colors.green[900],
                                    ),
                                  ),

                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return "Boş geçilemez";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 3, left: SizeConfig.blockWidth * 6, right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                                cursorColor: Colors.green[900],
                                controller: _kullaniciAdi,
                                decoration: InputDecoration(
                                  hintText: "Şifre",
                                  hintStyle: SizeConfig.yaziHint,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                      color: Colors.green[900],
                                    ),
                                  ),

                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return "Boş geçilemez";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 3, left: SizeConfig.blockWidth * 6, right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                                cursorColor: Colors.green[900],
                                controller: _kullaniciAdi,
                                decoration: InputDecoration(
                                  hintText: "Şifre tekrar",
                                  hintStyle: SizeConfig.yaziHint,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.zero,
                                    borderSide: BorderSide(
                                      color: Colors.green[900],
                                    ),
                                  ),

                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return "Boş geçilemez";
                                  } else {
                                    return null;
                                  }
                                }),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
                          child: Container(
                            height: SizeConfig.blockWidth * 8,
                            width: SizeConfig.blockWidth * 24,
                            child: FlatButton(
                                onPressed: () {},
                                child: Container(
                                  child: Text(
                                    "Kayıt",
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}