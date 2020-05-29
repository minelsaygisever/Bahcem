import 'dart:io';

import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/services/bahcem_service.dart';
import 'package:bahcem_deneme/view/main.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BahcemBitkiDuzenle extends StatefulWidget {
  final String albumUrl;
  final String bitkininAdi;
  final String hatirlatici;
  final String isiIhtiyaci;
  final String isikIhtiyaci;
  final String notlar;
  final String profilImgUrl;
  final String sulama;
  final String toprakDegisim;
  final String toprakTipi;
  final String userId;

  const BahcemBitkiDuzenle(
      this.albumUrl,
      this.bitkininAdi,
      this.hatirlatici,
      this.isiIhtiyaci,
      this.isikIhtiyaci,
      this.notlar,
      this.profilImgUrl,
      this.sulama,
      this.toprakDegisim,
      this.toprakTipi,
      this.userId);

  @override
  State<StatefulWidget> createState() => BahcemBitkiDuzenleState();
}

class BahcemBitkiDuzenleState extends State<BahcemBitkiDuzenle> {
  String _albumUrl = "";
  String _bitkininAdi = "";
  String _hatirlatici = "";
  String _isiIhtiyaci = "";
  String _isikIhtiyaci = "";
  String _notlar = "";
  String _profilImgUrl = "";
  String _sulama = "";
  String _toprakDegisim = "";
  String _toprakTipi = "";

  BahcemService _bahcemService;
  File _selectedImageProfil;
  var imgUrl;
  bool _absorbing = false;

  @override
  void initState() {
    super.initState();
    _bahcemService = BahcemService();
  }

  final _bitkininAdiController = TextEditingController();
  final _notlarController = TextEditingController();

  Future selectImageProfil() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    //var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _selectedImageProfil = image;
    });
  }

  Future uploadImageProfil() async {
    StorageReference ref = FirebaseStorage.instance
        .ref()
        .child("0H9SC3y9PAQsFx9HwSBTjv0kIA72")
        .child("Profil")
        .child("img" + BahcemService.plantLength.toString() + ".jpg");
    StorageUploadTask uploadTask = ref.putFile(_selectedImageProfil);
    imgUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
    _profilImgUrl = imgUrl.toString();
  }

  Widget showDefaultProfile() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.blockWidth * 4),
            child: Container(
              height:
                  (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
              width:
                  (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.profilImgUrl),
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.6), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              //margin: EdgeInsets.all(5.0),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => selectImageProfil(),
                child: Icon(
                  Icons.edit,
                  size: SizeConfig.blockWidth * 8,
                  color: SizeConfig.almostBlack,
                ),
              ),
            ),
          ),
          Container(
            height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
            width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.7,
            alignment: Alignment.bottomCenter,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              cursorColor: SizeConfig.green,
              initialValue: widget.notlar,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: SizeConfig.green,
                  ),
                ),
              ),
              style: SizeConfig.yaziAciklama,
            ),
          ),
        ]);
  }

  Widget showNewProfile() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: SizeConfig.blockWidth * 4),
            child: Container(
              height:
              (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
              width:
              (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(_selectedImageProfil),
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.6), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
              //margin: EdgeInsets.all(5.0),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => selectImageProfil(),
                child: Icon(
                  Icons.edit,
                  size: SizeConfig.blockWidth * 8,
                  color: SizeConfig.almostBlack,
                ),
              ),
            ),
          ),
          Container(
            height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
            width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.7,
            alignment: Alignment.bottomCenter,
            child: TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              cursorColor: SizeConfig.green,
              initialValue: widget.notlar,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: SizeConfig.green,
                  ),
                ),
              ),
              style: SizeConfig.yaziAciklama,
            ),
          ),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    String sulamaDropDown = widget.sulama[0];
    String sulamaAralikDropDown = widget.sulama.split(" ")[1];
    String toprakDegisimDropDown = widget.toprakDegisim[0];
    String toprakDegisimAralikDropDown = widget.toprakDegisim.split(" ")[1];
    String toprakTipiDropDown = widget.toprakTipi;
    String isikIhtiyaciDropDown = widget.isikIhtiyaci;
    String isiIhtiyaciDropDown = widget.isiIhtiyaci;
    String hatirlaticiDropDown = widget.hatirlatici;

    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text(
          widget.bitkininAdi + ' Düzenle',
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
                    maxLines: null,
                    cursorColor: SizeConfig.green,
                    initialValue: widget.bitkininAdi,
                    decoration: InputDecoration(
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
              child: _selectedImageProfil == null
                  ? showDefaultProfile()
                  : showNewProfile(),
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
                          //alignment: Alignment.topLeft,
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
                  0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fotoğraf albümü",
                      style: SizeConfig.yaziAciklamaBaslik,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    height: SizeConfig.blockWidth * 15,
                    width: SizeConfig.blockWidth * 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.75), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Icon(
                      Icons.clear,
                      size: SizeConfig.blockWidth * 10,
                      color: SizeConfig.almostBlack,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    height: SizeConfig.blockWidth * 15,
                    width: SizeConfig.blockWidth * 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya-saksi.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.75), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Icon(
                      Icons.clear,
                      size: SizeConfig.blockWidth * 10,
                      color: SizeConfig.almostBlack,
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.blockWidth * 15,
                  width: SizeConfig.blockWidth * 15,
                  decoration: BoxDecoration(
                    color: SizeConfig.almostWhite,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(SizeConfig.blockWidth * 4.5),
                    child: Image.asset(
                      "assets/icons/plus.png",
                      color: SizeConfig.almostBlack,
                    ),
                  ),
                ),
              ],
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

                        _sulama = sulamaDropDown + " " + sulamaAralikDropDown + " " + "bir";
                        _toprakDegisim = toprakDegisimDropDown + " " + toprakDegisimAralikDropDown + " " + "bir";
                        _toprakTipi = toprakTipiDropDown;
                        _isikIhtiyaci = isikIhtiyaciDropDown;
                        _isiIhtiyaci = isiIhtiyaciDropDown;
                        _hatirlatici = hatirlaticiDropDown;

                        await uploadImageProfil();

                       await _bahcemService.updatePlant(
                            _albumUrl,
                            _bitkininAdi,
                            _hatirlatici,
                            _isiIhtiyaci,
                            _isikIhtiyaci,
                            _notlar,
                            _profilImgUrl,
                            _sulama,
                            _toprakDegisim,
                            _toprakTipi, 0);

                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyHomePage()));
                        });
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyHomePage()));
                        });

                        setState(() {
                          _absorbing = false;
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
            ),
          ],
        ),
      ),
    );
  }
}
