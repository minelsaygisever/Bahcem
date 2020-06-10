import 'dart:io';
import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:bahcem_deneme/services/user_service.dart';
import 'package:bahcem_deneme/view/blog/blog_profil_view.dart';
import 'package:bahcem_deneme/view/main.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BlogProfilDuzenle extends StatefulWidget {
  @override
  _BlogProfilDuzenleState createState() => _BlogProfilDuzenleState();
}

class _BlogProfilDuzenleState extends State<BlogProfilDuzenle> {
  UserService userService;
  UserModel currentUser;
  File _selectedImageProfil;
  String _profilImgUrl = "";
  var imgUrl;

  String isim = "";
  String kullaniciAdi = "";
  String bio = "";
  int index = 0;

  int count_isim = 0;
  int count_kullaniciAdi = 0;
  int count_bio = 0;
  int count_profilImg = 0;

  @override
  void initState() {
    super.initState();
    userService = UserService();
  }

  Future selectImageProfil() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    //var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _selectedImageProfil = image;
      count_profilImg++;
    });
  }

  Future uploadImageProfil() async {
    StorageReference ref = FirebaseStorage.instance
        .ref()
        .child(currentUser.userId.toString())
        .child("Profil")
        .child("profile_img.jpg");

    StorageUploadTask uploadTask = ref.putFile(_selectedImageProfil);
    imgUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
    _profilImgUrl = imgUrl.toString();
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
              if (snapshot.hasData) {
                print("has data");
                return _listUser(snapshot.data);
              } else {
                print("no data");
                return _listNotFoundUser();
              }
              //servis geldi ama data yoksa
              break;
          //servisten dönemediyse, hata varsa
            default:
              return _waitingWidget;
          }
        },
      ),
    );
  }

  Widget _listUser(List<UserModel> list) {
    for (int i = 0; i < list.length; i++) {
      if (list[i].userId == UserService.user.uid) {
        index = i;
        currentUser = list[i];
        break;
      }
    }
    return _ProfilDuzenleThings();
  }

  Widget _listNotFoundUser() {
    return _ProfilDuzenleThings();
  }

  Widget _ProfilDuzenleThings() {
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
                      backgroundColor: SizeConfig.almostWhite,
                      backgroundImage: _selectedImageProfil == null
                          ? (currentUser.profilImg == ""
                          ? AssetImage("assets/icons/user.png")
                          : NetworkImage(currentUser.profilImg))
                          : FileImage(_selectedImageProfil),
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
                          onPressed: () => selectImageProfil(),
                          child: Text(
                            "Profil Fotoğrafını Değiştir",
                            textAlign: TextAlign.center,
                            style: SizeConfig.yaziAciklamaBaslik,
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding:
                  EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0.0),
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
                          initialValue: currentUser.blogIsim,
                          onChanged: (val) {
                            setState(() => isim = val);
                            count_isim++;
                          },
                          decoration: InputDecoration(
                            fillColor: SizeConfig.green,
                            labelStyle: SizeConfig.yaziWidgetIci,
                            border: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: SizeConfig.almostWhite)),
                          ),
                        ))),
                Padding(
                  padding:
                  EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0.0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "E-Posta",
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
                          initialValue: currentUser.kullaniciAdi,
                          onChanged: (val) {
                            setState(() => kullaniciAdi = val);
                            count_kullaniciAdi++;
                          },
                          decoration: InputDecoration(
                            fillColor: SizeConfig.green,
                            labelStyle: SizeConfig.yaziWidgetIci,
                            border: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: SizeConfig.almostWhite)),
                          ),
                        ))),
                Padding(
                  padding:
                  EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0.0),
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
                          initialValue: currentUser.bio,
                          onChanged: (val) {
                            setState(() => bio = val);
                            count_bio++;
                          },
                          decoration: InputDecoration(
                            fillColor: SizeConfig.green,
                            labelStyle: SizeConfig.yaziWidgetIci,
                            border: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: SizeConfig.almostWhite)),
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
                          if (count_profilImg != 0) {
                            await uploadImageProfil();
                          }
                          await userService.editUser(
                              count_bio == 0 ? currentUser.bio : bio,
                              count_isim == 0 ? currentUser.blogIsim : isim,
                              count_kullaniciAdi == 0
                                  ? currentUser.kullaniciAdi
                                  : kullaniciAdi,
                              count_profilImg == 0
                                  ? currentUser.profilImg
                                  : _profilImgUrl,
                              index);
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

  /*Widget _waitingWidget() {
    Center(
        child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(SizeConfig.green)));
    return _ProfilDuzenleThings();
  }
  CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(SizeConfig.green),
        ),
        */

  Widget get _waitingWidget =>
      Center(
          child: CircularProgressIndicator(
              valueColor: new AlwaysStoppedAnimation<Color>(SizeConfig.green)));
}