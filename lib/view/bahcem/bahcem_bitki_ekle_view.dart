import 'dart:io';
import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/main.dart';
import 'package:bahcem_deneme/services/bahcem_service.dart';
import 'package:bahcem_deneme/view/ayarlar_sayfasi_view.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:flutter/painting.dart';

class BahcemBitkiEkle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BahcemBitkiEkleState();
}

class _BahcemBitkiEkleState extends State<BahcemBitkiEkle> {
  BahcemService _bahcemService;
  File _selectedImageProfil;
  File _selectedImageAlbum;
  var imgUrl;
  bool _absorbing = false;

  @override
  void initState() {
    super.initState();
    _bahcemService = BahcemService();
    initializing();
  }

  final _bitkininAdiController = TextEditingController();
  final _notlarController = TextEditingController();

  String albumUrl = "";
  String bitkininAdi = "";
  String createdAt = "";
  String hatirlatici = "";
  String isiIhtiyaci = "";
  String isikIhtiyaci = "";
  String notlar = "";
  String profilImgUrl = "";
  String sulama = "";
  String toprakDegisim = "";
  String toprakTipi = "";

  String sulamaDropDown = '1';
  String sulamaAralikDropDown = 'günde';
  String toprakDegisimDropDown = '1';
  String toprakDegisimAralikDropDown = 'günde';
  String toprakTipiDropDown = 'torflu';
  String isikIhtiyaciDropDown = 'Çok ışıklı ortam';
  String isiIhtiyaciDropDown = '20-22 derece';
  String hatirlaticiDropDown = 'Açık';

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  AndroidInitializationSettings androidInitializationSettings;
  IOSInitializationSettings iosInitializationSettings;
  InitializationSettings initializationSettings;

  void initializing() async {
    androidInitializationSettings = AndroidInitializationSettings('flower_not');
    iosInitializationSettings = IOSInitializationSettings(
        onDidReceiveLocalNotification: onDidReceiveLocalNotification);
    initializationSettings = InitializationSettings(
        androidInitializationSettings, iosInitializationSettings);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: onSelectNotification);
  }

  void _showNotifications() async {
    await notification();
  }

  Future<void> notification() async {
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
            'Channel ID', 'Channel title', 'channel body',
            priority: Priority.High,
            importance: Importance.Max,
            ticker: 'test');

    IOSNotificationDetails iosNotificationDetails = IOSNotificationDetails();

    NotificationDetails notificationDetails =
        NotificationDetails(androidNotificationDetails, iosNotificationDetails);
    await flutterLocalNotificationsPlugin.show(
        0, 'Bahçem', '$bitkininAdi bahçene eklendi!', notificationDetails);
  }

  Future onSelectNotification(String payLoad) {
    if (payLoad != null) {
      print(payLoad);
    }
  }

  Future onDidReceiveLocalNotification(
      int id, String title, String body, String payload) async {
    return CupertinoAlertDialog(
      title: Text(title),
      content: Text(body),
      actions: <Widget>[
        CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              print("");
            },
            child: Text("Okay")),
      ],
    );
  }

  Future selectImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    var imageSmall = img.copyResize(img.decodeJpg(image.readAsBytesSync()), width: 100);
    image.writeAsBytesSync(img.encodeJpg(imageSmall));
    //var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _selectedImageProfil = image;
    });
  }

  Future uploadImage() async {
    StorageReference ref = FirebaseStorage.instance
        .ref()
        .child("0H9SC3y9PAQsFx9HwSBTjv0kIA72")
        .child("Profil")
        .child("img" + BahcemService.plantLength.toString() + ".jpg");
    StorageUploadTask uploadTask = ref.putFile(_selectedImageProfil);
    imgUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
    profilImgUrl = imgUrl.toString();
  }

  Widget showDefaultImg() {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.blockWidth * 2),
      child: Image(
        image: AssetImage('assets/icons/postdef.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget showNewImg() {
    return Image(image: FileImage(_selectedImageProfil),
      fit: BoxFit.cover,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Bitki Ekle',
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
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    controller: _bitkininAdiController,
                    onChanged: (val) {
                      setState(() => bitkininAdi = val);
                    },
                    maxLines: null,
                    cursorColor: SizeConfig.green,
                    decoration: InputDecoration(
                      hintText: 'Bitkinin adı...',
                      hintStyle: SizeConfig.yaziHint,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: SizeConfig.green,
                        ),
                      ),
                    ),
                    style: SizeConfig.yaziAciklama,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => selectImage(),
                    child: Container(
                      height: (SizeConfig.screenWidth -
                          SizeConfig.blockWidth * 12) *
                          0.3,
                      width: (SizeConfig.screenWidth -
                          SizeConfig.blockWidth * 12) *
                          0.3,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: SizeConfig.almostWhite,
                          width: 0,
                        ),
                        color: SizeConfig.almostWhite,
                      ),
                      child: _selectedImageProfil == null
                          ? showDefaultImg()
                          : showNewImg(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: SizeConfig.blockWidth * 4),
                    child: Container(
                      height: (SizeConfig.screenWidth -
                          SizeConfig.blockWidth * 12) *
                          0.3,
                      width: (SizeConfig.screenWidth -
                          SizeConfig.blockWidth * 12) *
                          0.7,
                      alignment: Alignment.bottomCenter,
                      child: TextFormField(
                        controller: _notlarController,
                        onChanged: (val) {
                          setState(() => notlar = val);
                        },
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        cursorColor: SizeConfig.green,
                        decoration: InputDecoration(
                          hintText: 'Bitki hakkında notlar...',
                          hintStyle: SizeConfig.yaziHint,
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: SizeConfig.green,
                            ),
                          ),
                        ),
                        style: SizeConfig.yaziAciklama,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    child: Text(
                      "Sulama",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2,
                            0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 12,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: sulamaDropDown,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height: SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                sulamaDropDown = newValue;
                              });
                            },
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2,
                            0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 22,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: sulamaAralikDropDown,
                            isExpanded: true,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height: SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                sulamaAralikDropDown = newValue;
                              });
                            },
                            items: <String>['günde', 'haftada', 'ayda', 'yılda']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockWidth * 2, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockWidth * 5,
                          child: Text(
                            "bir",
                            style: SizeConfig.yaziWidgetIci,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    child: Text(
                      "Toprak değişim",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2,
                            0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 12,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: toprakDegisimDropDown,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height: SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                toprakDegisimDropDown = newValue;
                              });
                            },
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2,
                            0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 22,
                          child: DropdownButton<String>(
                            value: toprakDegisimAralikDropDown,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: SizeConfig.yaziWidgetIci,
                            underline: Container(
                              height: SizeConfig.blockWidth * 0.3,
                              color: SizeConfig.almostBlack,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                toprakDegisimAralikDropDown = newValue;
                              });
                            },
                            items: <String>['günde', 'haftada', 'ayda', 'yılda']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: SizeConfig.yaziWidgetIci,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.blockWidth * 2, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockWidth * 5,
                          child: Text(
                            "bir",
                            style: SizeConfig.yaziWidgetIci,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    child: Text(
                      "Toprak tipi",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: toprakTipiDropDown,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height: SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            toprakTipiDropDown = newValue;
                          });
                        },
                        items: <String>['torflu', 'orkide toprağı']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    child: Text(
                      "Işık ihtiyacı",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: isikIhtiyaciDropDown,
                        isExpanded: true,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height: SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            isikIhtiyaciDropDown = newValue;
                          });
                        },
                        items: <String>['Çok ışıklı ortam', 'Az ışıklı ortam']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    child: Text(
                      "Isı ihtiyacı",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: isiIhtiyaciDropDown,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height: SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            isiIhtiyaciDropDown = newValue;
                          });
                        },
                        items: <String>['20-22 derece', '20-30 derece']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) *
                            0.4,
                    child: Text(
                      "Hatırlatıcılar",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: hatirlaticiDropDown,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: SizeConfig.yaziWidgetIci,
                        underline: Container(
                          height: SizeConfig.blockWidth * 0.3,
                          color: SizeConfig.almostBlack,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            hatirlaticiDropDown = newValue;
                          });
                        },
                        items: <String>['Açık', 'Kapalı']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: SizeConfig.yaziWidgetIci,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.blockWidth * 33,
                  top: SizeConfig.blockWidth * 2,
                  right: SizeConfig.blockWidth * 33,
                  bottom: SizeConfig.blockWidth * 2),
              child: Container(
                height: SizeConfig.blockWidth * 8,
                width: SizeConfig.blockWidth * 26,
                child: AbsorbPointer(
                  absorbing: _absorbing,
                  child: FlatButton(
                      onPressed: () async {
                        setState(() {
                          _absorbing = true;
                        });

                        sulama = sulamaDropDown +
                            " " +
                            sulamaAralikDropDown +
                            " " +
                            "bir";
                        toprakDegisim = toprakDegisimDropDown +
                            " " +
                            toprakDegisimAralikDropDown +
                            " " +
                            "bir";
                        toprakTipi = toprakTipiDropDown;
                        isikIhtiyaci = isikIhtiyaciDropDown;
                        isiIhtiyaci = isiIhtiyaciDropDown;
                        hatirlatici = hatirlaticiDropDown;
                        createdAt = DateTime.now().toString();

                        await uploadImage();

                        await _bahcemService.sendPlant(
                            albumUrl,
                            bitkininAdi,
                            createdAt,
                            hatirlatici,
                            isiIhtiyaci,
                            isikIhtiyaci,
                            notlar,
                            profilImgUrl,
                            sulama,
                            toprakDegisim,
                            toprakTipi);

                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyHomePage()));
                        });
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) => MyHomePage()));
                        });

                        if (AyarlarSayfasiState.bildirimState) {
                          _showNotifications();
                        }

                        setState(() {
                          _absorbing = false;
                        });
                      },
                      child: Container(
                        child: Text("Ekle", style: SizeConfig.yaziButon),
                      ),
                      color: SizeConfig.green,
                      shape: StadiumBorder()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
