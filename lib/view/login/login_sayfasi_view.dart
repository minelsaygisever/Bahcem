import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginSayfasi extends StatefulWidget {
  final Function toggleView;

  LoginSayfasi({this.toggleView});

  @override
  _LoginSayfasiState createState() => _LoginSayfasiState();
}

class _LoginSayfasiState extends State<LoginSayfasi> {
  GlobalKey<ScaffoldState> scaffold = GlobalKey();
  final _formKey = GlobalKey<FormState>();
  final _kullaniciAdi = TextEditingController();
  final _sifre = TextEditingController();

  final AuthService _auth = AuthService();
  String error = '';

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: scaffold,
      body: ListView(
        children: <Widget>[
          Container(
            height: SizeConfig.screenHeight - SizeConfig.safeAreaHorizontal,
            width: SizeConfig.screenWidth - SizeConfig.safeAreaVertical,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.blockWidth * 6, 0, SizeConfig.blockWidth * 6, 0),
              child: Center(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                  0,
                                  SizeConfig.blockWidth * 40,
                                  0,
                                  SizeConfig.blockWidth * 10),
                              child: Text(
                                "Bahçem",
                                textDirection: TextDirection.ltr,
                                style: TextStyle(
                                  color: SizeConfig.green,
                                  fontFamily: "Photoshoot",
                                  fontSize: SizeConfig.blockWidth * 13,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(
                                          SizeConfig.blockWidth * 0.5,
                                          SizeConfig.blockWidth * 0.5),
                                      blurRadius: 5.0,
                                      color: Color.fromARGB(60, 0, 0, 0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: SizeConfig.blockWidth * 3,
                                  left: SizeConfig.blockWidth * 6,
                                  right: SizeConfig.blockWidth * 6),
                              child: Container(
                                height: SizeConfig.blockWidth * 12,
                                alignment: Alignment.center,
                                child: TextFormField(
                                  validator: (val) => val.isEmpty
                                      ? 'Lütfen epostanızı giriniz'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => email = val);
                                  },
                                  textAlignVertical: TextAlignVertical.bottom,
                                  cursorColor: SizeConfig.green,
                                  controller: _kullaniciAdi,
                                  decoration: InputDecoration(
                                    hintText: "E-posta",
                                    hintStyle: SizeConfig.yaziHint,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                        color: SizeConfig.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: SizeConfig.blockWidth * 3,
                                  left: SizeConfig.blockWidth * 6,
                                  right: SizeConfig.blockWidth * 6),
                              child: Container(
                                height: SizeConfig.blockWidth * 12,
                                alignment: Alignment.center,
                                child: TextFormField(
                                  obscureText: true,
                                  validator: (val) => val.length < 6
                                      ? 'En az 6 karakter uzunluğunda şifre giriniz'
                                      : null,
                                  onChanged: (val) {
                                    setState(() => password = val);
                                  },
                                  textAlignVertical: TextAlignVertical.bottom,
                                  cursorColor: SizeConfig.green,
                                  controller: _sifre,
                                  decoration: InputDecoration(
                                    hintText: "Şifre",
                                    hintStyle: SizeConfig.yaziHint,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.zero,
                                      borderSide: BorderSide(
                                        color: SizeConfig.green,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom: SizeConfig.blockWidth * 1),
                              child: Container(
                                height: SizeConfig.blockWidth * 10,
                                width: SizeConfig.blockWidth * 30,
                                child: FlatButton(
                                    //onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()),),
                                    onPressed: () async {
                                      if (_formKey.currentState.validate()) {
                                        dynamic result = await _auth
                                            .signInWithEmailAndPassword(
                                                email, password);
                                        if (result == null) {
                                          setState(() {
                                            error =
                                                'Lütfen kayıtlı bir e-posta ve şifre giriniz';
                                          });
                                        }
                                      }
                                      /*scaffold.currentState.showSnackBar(SnackBar(
                                        content: Text("Giriş Başarılı"),
                                      ));*/
                                    },
                                    child: Container(
                                      child: Text(
                                        "Giriş",
                                        style: TextStyle(
                                          fontSize: SizeConfig.blockWidth * 5.5,
                                          color: SizeConfig.almostWhite,
                                          fontFamily:
                                              "Champagne-Limousines-Bold",
                                        ),
                                      ),
                                    ),
                                    color: SizeConfig.green,
                                    shape: StadiumBorder()),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    bottom: SizeConfig.blockWidth * 1),
                                //child: SizedBox(height: 12.0),
                                child: Text(
                                  error,
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 14.0),
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockWidth * 4,
                              bottom: SizeConfig.blockWidth * 4),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: SizeConfig.blockWidth * 50,
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Üye değil misiniz?",
                                  textDirection: TextDirection.ltr,
                                  style: SizeConfig.yaziAciklamaBaslik,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: SizeConfig.blockWidth * 2),
                                child: Container(
                                  height: SizeConfig.blockWidth * 8,
                                  width: SizeConfig.blockWidth * 24,
                                  child: FlatButton(
                                      /*onPressed: () => Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) => RegisterSayfasi()
                                      )),*/
                                      onPressed: () => widget.toggleView(),
                                      child: Container(
                                        child: Text(
                                          "Kayıt",
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
