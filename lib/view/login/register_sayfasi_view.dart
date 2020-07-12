import 'package:bahcem_deneme/models/user_model.dart';
import 'package:bahcem_deneme/services/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../SizeConfig.dart';
import 'package:bahcem_deneme/services/user_service.dart';

class RegisterSayfasi extends StatefulWidget {
  final Function toggleView;

  RegisterSayfasi({this.toggleView});

  @override
  _RegisterSayfasiState createState() => _RegisterSayfasiState();
}

class _RegisterSayfasiState extends State<RegisterSayfasi> {
  UserService _userService;

  final _formKey = GlobalKey<FormState>();
  final _kullaniciAdi = TextEditingController();
  final _sifre = TextEditingController();
  final _eposta = TextEditingController();
  final _sifreTekrar = TextEditingController();

  final AuthService _auth = AuthService();
  String error = '';
  String passwordFirst= '';
  String email = '';
  String kullanici_adi = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    _userService = UserService();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.almostWhite,
      body: Stack(
        children: <Widget>[
          FutureBuilder(
            future: _userService.getUser(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
              //connection done ile kontrol ediliyor. active, waiting vs durumlarda bu şekilde kontrol edilebilir
                case ConnectionState.done:
                //datası var mı
                  if (snapshot.hasData){
                    return _listUser(snapshot.data);
                  }
                  else{
                    return _listNotFoundUser();
                  }
                  //servis geldi ama data yoksa
                  break;
              //servisten dönemediyse, hata varsa
                default:
                  return _listNotFoundUser();
              }
            },
          ),

        ],

      ),
    );


  }
  Widget _listUser(List<UserModel> list) {
    UserService.userLength = list.length;
    return _registerThings();
  }
  Widget _listNotFoundUser() {
    UserService.userLength = 0;
    return _registerThings();
  }

  Widget _registerThings(){
    return ListView(
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
                      Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                              0,
                              SizeConfig.blockWidth * 22,
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
                          padding: EdgeInsets.only(
                              bottom: SizeConfig.blockWidth * 3,
                              left: SizeConfig.blockWidth * 6,
                              right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                              validator: (val) =>
                              val.isEmpty ? 'Lütfen eposta giriniz' : null,
                              onChanged: (val) {
                                setState(() => email = val);
                              },
                              textAlignVertical: TextAlignVertical.bottom,
                              cursorColor: SizeConfig.green,
                              controller: _eposta,
                              decoration: InputDecoration(
                                hintText: "E-Posta",
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
                                validator: (val) =>
                                val.isEmpty ? 'Lütfen kullanıcı adı giriniz' : null,
                                onChanged: (val) {
                                  setState(() => kullanici_adi = val);
                                },
                                textAlignVertical: TextAlignVertical.bottom,
                                cursorColor: SizeConfig.green,
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
                                      color: SizeConfig.green,
                                    ),
                                  ),
                                ),
                              )
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
                                setState(() => passwordFirst = val);
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
                              bottom: SizeConfig.blockWidth * 3,
                              left: SizeConfig.blockWidth * 6,
                              right: SizeConfig.blockWidth * 6),
                          child: Container(
                            height: SizeConfig.blockWidth * 12,
                            alignment: Alignment.center,
                            child: TextFormField(
                              validator: (val) => val != "" ? (val == _sifre
                                  ? 'Şifreler eşleşmiyor.'
                                  : null) : 'Boş geçilmez.',
                              onChanged: (val) {
                                setState(() => password = val);
                              },
                              obscureText: true,
                              textAlignVertical: TextAlignVertical.bottom,
                              cursorColor: SizeConfig.green,
                              controller: _sifreTekrar,
                              decoration: InputDecoration(
                                hintText: "Şifre tekrar",
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
                                onPressed: () async {
                                  if (_formKey.currentState.validate()) {
                                    dynamic result = await _auth
                                        .registerWithEmailAndPassword(
                                        email, password);

                                    if (result == null) {
                                      setState(() {
                                        error =
                                        'Bu e-posta kullanılamaz!';
                                      });
                                    }
                                    await _userService.sendUser(null, "", "", email, kullanici_adi, "");
                                  }
                                },
                                child: Container(
                                  child: Text(
                                    "Kaydet",
                                    style: TextStyle(
                                      fontSize: SizeConfig.blockWidth * 5.5,
                                      color: SizeConfig.almostWhite,
                                      fontFamily: "Champagne-Limousines-Bold",
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
                              style:
                              TextStyle(color: Colors.red, fontSize: 14.0),
                            )),

                      ],),
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
                                "Zaten üye misiniz?",
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
                                        "Giriş",
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
    );
  }
}
