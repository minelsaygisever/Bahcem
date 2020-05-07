import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'custom_switch.dart';
import 'main.dart';

class BahcemBitkiDuzenle extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => BahcemBitkiDuzenleState();
}

class BahcemBitkiDuzenleState extends State<BahcemBitkiDuzenle>{
  String dropdownValue = '1';
  String dropdownValue1 = 'günde';
  String dropdownValue3 = '1';
  String dropdownValue4 = 'günde';
  String dropdownValue5 = 'torflu';
  String dropdownValue6 = 'Çok ışıklı ortam';
  String dropdownValue7 = '20-22 derece';
  String dropdownValue8 = 'Açık';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:  AppBar(
        title: Text(
          'Ponsetya 1 Düzenle',
          style: TextStyle(
            fontFamily: "Champagne-Limousines-Bold",
            fontSize: SizeConfig.blockWidth * 6,
            color: Colors.green[900],
          ),
        ),
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green[900], //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: new ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextFormField(
                    maxLines: null,
                    cursorColor: Colors.green[900],
                    initialValue: 'Pontesya 1',
                    decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: "Champagne-Limousines-Bold",
                      color: Colors.black87,
                      fontSize: SizeConfig.blockWidth * 4.5,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
                child: Row(
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
                              image: AssetImage("assets/images/ponsetya.jpg"),
                              colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.6), BlendMode.dstATop),
                              fit: BoxFit.cover,
                            ),
                          ),
                          //margin: EdgeInsets.all(5.0),
                          alignment: Alignment.bottomRight,
                          child: new Icon(
                            Icons.edit,
                            size: SizeConfig.blockWidth * 8,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      Container(
                        height:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                        width:
                        (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.7,
                        alignment: Alignment.bottomCenter,
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          cursorColor: Colors.green[900],
                          initialValue: 'Zeynep\'in kendisi kadar zarif hediyesi <3',
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green[900],
                              ),
                            ),
                          ),
                          style: TextStyle(
                            fontFamily: "Champagne-Limousines-Bold",
                            color: Colors.black87,
                            fontSize: SizeConfig.blockWidth * 4.5,
                          ),
                        ),
                      ),
                    ]
                )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Sulama",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 12,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: "Champagne-Limousines-Bold",
                              fontSize: SizeConfig.blockWidth * 4,
                            ),
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: Colors.black87,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "Champagne-Limousines-Bold",
                                    color: Colors.black87,
                                    fontSize: SizeConfig.blockWidth * 4,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 22,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue1,
                            isExpanded: true,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: "Champagne-Limousines-Bold",
                              fontSize: SizeConfig.blockWidth * 4,
                            ),
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: Colors.black87,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue1 = newValue;
                              });
                            },
                            items: <String>['günde', 'haftada', 'ayda', 'yılda']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "Champagne-Limousines-Bold",
                                    color: Colors.black87,
                                    fontSize: SizeConfig.blockWidth * 4,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockWidth * 5,
                          child: Text(
                            "bir",
                            style: TextStyle(
                              fontFamily: "Champagne-Limousines-Bold",
                              fontSize: SizeConfig.blockWidth * 4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Toprak değişim",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 12,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue3,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: "Champagne-Limousines-Bold",
                              fontSize: SizeConfig.blockWidth * 4,
                            ),
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: Colors.black87,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue3 = newValue;
                              });
                            },
                            items: <String>['1', '2', '3', '4']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "Champagne-Limousines-Bold",
                                    color: Colors.black87,
                                    fontSize: SizeConfig.blockWidth * 4,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.blockWidth * 22,
                          //alignment: Alignment.topLeft,
                          child: DropdownButton<String>(
                            value: dropdownValue4,
                            icon: Icon(Icons.expand_more),
                            iconSize: SizeConfig.blockWidth * 6,
                            elevation: 15,
                            isExpanded: true,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: "Champagne-Limousines-Bold",
                              fontSize: SizeConfig.blockWidth * 4,
                            ),
                            underline: Container(
                              height:  SizeConfig.blockWidth * 0.3,
                              color: Colors.black87,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue4 = newValue;
                              });
                            },
                            items: <String>['günde', 'haftada', 'ayda', 'yılda']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontFamily: "Champagne-Limousines-Bold",
                                    color: Colors.black87,
                                    fontSize: SizeConfig.blockWidth * 4,
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: SizeConfig.blockWidth * 5,
                          child: Text(
                            "bir",
                            style: TextStyle(
                              fontFamily: "Champagne-Limousines-Bold",
                              fontSize: SizeConfig.blockWidth * 4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Toprak tipi",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue5,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 4,
                        ),
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: Colors.black87,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue5 = newValue;
                          });
                        },
                        items: <String>['torflu', 'orkide toprağı']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontFamily: "Champagne-Limousines-Bold",
                                color: Colors.black87,
                                fontSize: SizeConfig.blockWidth * 4,
                              ),
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
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Işık ihtiyacı",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue6,
                        isExpanded: true,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 4,
                        ),
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: Colors.black87,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue6 = newValue;
                          });
                        },
                        items: <String>['Çok ışıklı ortam', 'Az ışıklı ortam']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontFamily: "Champagne-Limousines-Bold",
                                color: Colors.black87,
                                fontSize: SizeConfig.blockWidth * 4,
                              ),
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
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Isı ihtiyacı",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue7,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 4,
                        ),
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: Colors.black87,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue7 = newValue;
                          });
                        },
                        items: <String>['20-22 derece', '20-30 derece']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontFamily: "Champagne-Limousines-Bold",
                                color: Colors.black87,
                                fontSize: SizeConfig.blockWidth * 4,
                              ),
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
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Fotoğraf albümü",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    height: SizeConfig.blockWidth * 15,
                    width: SizeConfig.blockWidth * 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.75), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: new Icon(
                      Icons.clear,
                      size: SizeConfig.blockWidth * 10,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0, 0, SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    height: SizeConfig.blockWidth * 15,
                    width: SizeConfig.blockWidth * 15,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya-saksi.jpg"),
                        colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.75), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: new Icon(
                      Icons.clear,
                      size: SizeConfig.blockWidth * 10,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.blockWidth * 15,
                  width: SizeConfig.blockWidth * 15,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                  ),
                  child: new Icon(
                    Icons.add,
                    size: SizeConfig.blockWidth * 10,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0,
                  SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                    child: Text(
                      "Hatırlatıcılar",
                      style: TextStyle(
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 5,
                        color: Colors.green[900],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, 0, 0),
                    child: Container(
                      width: SizeConfig.blockWidth * 47,
                      //alignment: Alignment.topLeft,
                      child: DropdownButton<String>(
                        value: dropdownValue8,
                        icon: Icon(Icons.expand_more),
                        iconSize: SizeConfig.blockWidth * 6,
                        elevation: 15,
                        isExpanded: true,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 4,
                        ),
                        underline: Container(
                          height:  SizeConfig.blockWidth * 0.3,
                          color: Colors.black87,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue8 = newValue;
                          });
                        },
                        items: <String>['Açık', 'Kapalı']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontFamily: "Champagne-Limousines-Bold",
                                color: Colors.black87,
                                fontSize: SizeConfig.blockWidth * 4,
                              ),
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
              padding: EdgeInsets.only(left: SizeConfig.blockWidth * 30, top: SizeConfig.blockWidth * 2, right: SizeConfig.blockWidth * 30, bottom: SizeConfig.blockWidth * 2),
              child: Container(
                height: SizeConfig.blockWidth * 10,
                width: SizeConfig.blockWidth * 26,
                child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      child: Text(
                        "Düzenle",
                        style: TextStyle(
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.white,
                          fontFamily: "Champagne-Limousines-Bold",
                        ),
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
    );
  }
}