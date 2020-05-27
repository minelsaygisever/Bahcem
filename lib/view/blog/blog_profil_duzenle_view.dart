import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:bahcem_deneme/services/user_service.dart';
import 'package:bahcem_deneme/view/blog/blog_profil_view.dart';
import 'package:bahcem_deneme/view/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogProfilDuzenle extends StatefulWidget {
  @override
  _BlogProfilDuzenleState createState() => _BlogProfilDuzenleState();
}

class _BlogProfilDuzenleState extends State<BlogProfilDuzenle> {
  UserService userService;
  int index = 0;

  String isim = "Minel";
  String kullaniciAdi = "minelsaygisever";
  String bio = "Welcome to my green world!";

  @override
  void initState() {
    super.initState();
    userService = UserService();
  }
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
      body: FutureBuilder(
        future: userService.getUser(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
          //connection done ile kontrol ediliyor. active, waiting vs durumlarda bu şekilde kontrol edilebilir
            case ConnectionState.done:
            //datası var mı
              if (snapshot.hasData){
                print("has data");
                return _listUser(snapshot.data);
              }
              else{
                print("no data");
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
    );
  }

  Widget _listUser(List<UserModel> list) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].userId == UserService.user.uid) {
        index = i;
        break;
      }
    }
    return _ProfilDuzenleThings();
  }
  Widget _listNotFoundUser() {
    return _ProfilDuzenleThings();
  }

  Widget _ProfilDuzenleThings(){
    return Padding(
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
                          initialValue: isim,
                          onChanged: (val) {
                            setState(() => isim = val);
                          },
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
                          initialValue: kullaniciAdi,
                          onChanged: (val) {
                            setState(() => kullaniciAdi = val);
                          },
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
                          initialValue: bio,
                          onChanged: (val) {
                            setState(() => bio = val);
                          },
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
                        onPressed: () async {
                          await userService.editUser(bio, isim, kullaniciAdi, "", index);
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
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
    );
  }
}
