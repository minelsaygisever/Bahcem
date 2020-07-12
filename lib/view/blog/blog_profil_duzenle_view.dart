import 'dart:io';
import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/services/user_service.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BlogProfilDuzenle extends StatefulWidget {
  final String blogIsimDetail;
  final String bioDetail;
  final String profilImgDetail;
  final String userIdDetail;
  final int indexDetail;

  const BlogProfilDuzenle(
      this.userIdDetail,
    this.blogIsimDetail,
    this.bioDetail,
    this.profilImgDetail,
      this.indexDetail);

  @override
  _BlogProfilDuzenleState createState() => _BlogProfilDuzenleState();
}

class _BlogProfilDuzenleState extends State<BlogProfilDuzenle> {
  UserService userService;
  File _selectedImageProfil;
  String _profilImgUrl = "";
  var imgUrl;

  String isim = "";
  String bio = "";
  int index = 0;

  int count_isim = 0;
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
        .child(widget.userIdDetail.toString())
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
                        backgroundColor: SizeConfig.almostWhite,
                        backgroundImage: _selectedImageProfil == null
                            ? (widget.profilImgDetail == ""
                            ? AssetImage("assets/icons/user.png")
                            : NetworkImage(widget.profilImgDetail))
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
                            initialValue: widget.blogIsimDetail,
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
                            initialValue: widget.bioDetail,
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
                                count_bio == 0 ? widget.bioDetail: bio,
                                count_isim == 0 ? widget.blogIsimDetail : isim,
                                count_profilImg == 0
                                    ? widget.profilImgDetail
                                    : _profilImgUrl,
                                widget.indexDetail);

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
      ),
    );
  }
}