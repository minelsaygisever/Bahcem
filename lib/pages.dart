import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'custom_switch.dart';
import 'main.dart';

class BitkiniTaniSayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:new Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, 0),
          child: new GridView.count(
            primary: false,
            crossAxisSpacing: SizeConfig.blockWidth * 4,
            mainAxisSpacing: SizeConfig.blockWidth * 4,
            crossAxisCount: 2,
            children: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BitkiniTaniBitkiGoruntule()),),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/orkide.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(SizeConfig.blockWidth * 2),
                          bottomRight: Radius.circular(SizeConfig.blockWidth * 2),
                        ),
                        color: Color(0xCDFFFFFF),
                      ),
                      child: new Text(
                        "Orkide",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                          fontSize: SizeConfig.blockWidth * 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              new GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BitkiniTaniBitkiGoruntule()),),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/photo5.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(SizeConfig.blockWidth * 2),
                          bottomRight: Radius.circular(SizeConfig.blockWidth * 2),
                        ),
                        color: Color(0xCDFFFFFF),
                      ),
                      child: new Text(
                        "Kasımpatı",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                          fontSize: SizeConfig.blockWidth * 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              new GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BitkiniTaniBitkiGoruntule()),),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/photo3.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(SizeConfig.blockWidth * 2),
                          bottomRight: Radius.circular(SizeConfig.blockWidth * 2),
                        ),
                        color: Color(0xCDFFFFFF),
                      ),
                      child: new Text(
                        "Deve Tabanı",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                          fontSize: SizeConfig.blockWidth * 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class BahcemSayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: new Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, 0),
          child: new GridView.count(
            primary: false,
            crossAxisSpacing: SizeConfig.blockWidth * 4,
            mainAxisSpacing: SizeConfig.blockWidth * 4,
            crossAxisCount: 2,
            children: <Widget>[
              new GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BahcemBitkiGoruntule()),),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/ponsetya.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(SizeConfig.blockWidth * 2),
                          bottomRight: Radius.circular(SizeConfig.blockWidth * 2),
                        ),
                        color: Color(0xCDFFFFFF),
                      ),
                      child: new Text(
                        "Ponsetya 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                          fontSize: SizeConfig.blockWidth * 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BahcemBitkiGoruntule()),),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/photo5.jpg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(SizeConfig.blockWidth * 2),
                          bottomRight: Radius.circular(SizeConfig.blockWidth * 2),
                        ),
                        color: Color(0xCDFFFFFF),
                      ),
                      child: new Text(
                        "Deve Tabanı 1",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900],
                          fontSize: SizeConfig.blockWidth * 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              new GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BahcemBitkiEkle()),),
                child: Container(
                  child: new Icon(
                    Icons.add,
                    size: SizeConfig.blockWidth * 30,
                    color: Colors.green[900],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BlogAnaSayfa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 2, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: SizeConfig.blockWidth * 2, right: SizeConfig.blockWidth * 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/minel.jpg'),
                            radius: SizeConfig.blockWidth * 5,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.blockWidth * 2),
                            child: Text(
                              'minelsaygisever',
                              style: TextStyle(
                                color: Colors.green[900],
                                fontFamily: 'Champagne-Limousines-Bold',
                                fontSize: SizeConfig.blockWidth * 5,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          GestureDetector(

                            onTap: () {},
                            child: new Image.asset(
                              "assets/icons/more.png",
                              color: Colors.black45,
                              height: SizeConfig.blockWidth * 4,
                              width: SizeConfig.blockWidth * 4,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
                  child: Image(
                    image: AssetImage('assets/images/photo1.jpg'),
                    height: SizeConfig.screenWidth,
                    width: SizeConfig.screenWidth,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: SizeConfig.blockWidth * 2, top: 0),
                        child: new Image.asset(
                          "assets/icons/flower.png",
                          color: Colors.black87,
                          height: SizeConfig.blockWidth * 7,
                          width: SizeConfig.blockWidth * 7,
                        ),
                      ),
                      Text(
                        ' 12 beğeni',
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Champagne-Limousines-Bold',
                          fontSize: SizeConfig.blockWidth * 4.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0),
                        child: Container(
                          width: SizeConfig.screenWidth - SizeConfig.blockWidth * 4,
                          child: Text(
                            'Minik aloeveralarım <3 Geçtiğimiz pazar annemle toprağını değiştirmiştik, ne çabuk yenileri çıkmış :)',
                            maxLines: null,
                            style: TextStyle(
                              color: Colors.black87,
                              fontFamily: 'Champagne-Limousines-Bold',
                              fontSize: SizeConfig.blockWidth * 4.5,
                            ),
                          ),
                        ),
                      ),
                    ],
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

class BitkiniTaniBitkiGoruntule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: SizeConfig.blockWidth),
          child: Text(
            'Orkide',
            style: TextStyle(
              fontFamily: "Champagne-Limousines-Bold",
              fontSize: SizeConfig.blockWidth * 6,
              color: Colors.green[900],
            ),
          ),
        ),
        centerTitle: true,
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
              padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                      child: Container(
                        height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                        width:  (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/orkide.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
                        ),
                      ),
                    ),
                    Container(
                      height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.4,
                      width:  (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.6,
                      child: Text(
                        "Tropikal iklim seven orkidelerin küçük yaprakları ve uzun gövdeleri vardır. Orkide çiçeklerinin ince uzun gövdeleri narin oldukları hissini uyandırsada fazlasıyla dayanıklı uzun ömürlü bitkilerdir.",
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 4.5,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Sulama",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "3 günde bir",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak değişim",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Yılda 1, ilkbahar",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak Tipi",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Özel orkide toprağı",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Işık ihtiyacı",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Aydınlık sever ancak direkt ışık almamalı",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Isı ihtiyacı",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "20 - 30 derece",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Notlar",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Şeffaf saksıda durmalı köklerin güneşe ihtiyacı var.",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
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

class BahcemBitkiGoruntule extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:  AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: SizeConfig.blockWidth),
          child: Text(
            'Ponsetya 1',
            style: TextStyle(
              fontFamily: "Champagne-Limousines-Bold",
              fontSize: SizeConfig.blockWidth * 6,
              color: Colors.green[900],
            ),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BahcemBitkiDuzenle()),),
              child: Icon(
                Icons.edit,
                size: SizeConfig.blockWidth * 7,
                color: Colors.green[900],
              ),
            ),
          ),
        ],
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green[900], //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                  child: Container(
                    height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 1.5),
                    ),
                  ),
                ),
                Container(
                  height: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.3,
                  width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.7,
                  child: Text(
                    "Zeynep'in kendisi kadar zarif hediyesi <3",
                    style: TextStyle(
                      color: Colors.black87,
                      fontFamily: "Champagne-Limousines-Bold",
                      fontSize: SizeConfig.blockWidth * 4.5,
                    ),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Sulama",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "3 günde bir",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak değişim",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "6 ayda bir",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Toprak Tipi",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Torflu",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Işık ihtiyacı",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Çok ışıklı ortam",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Isı ihtiyacı",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "20 - 22 derece",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                child: Text(
                  "Fotoğraf Albümü",
                  style: TextStyle(
                    fontFamily: "Champagne-Limousines-Bold",
                    fontSize: SizeConfig.blockWidth * 5,
                    color: Colors.green[900],
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2),
                  child: Container(
                    height: SizeConfig.blockWidth * 20,
                    width: SizeConfig.blockWidth * 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 2),
                  child: Container(
                    height: SizeConfig.blockWidth * 20,
                    width: SizeConfig.blockWidth * 20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ponsetya-saksi.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding:
                    EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                      child: Text(
                        "Hatırlatıcılar",
                        style: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontSize: SizeConfig.blockWidth * 5,
                          color: Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    width: (SizeConfig.screenWidth - SizeConfig.blockWidth * 12) * 0.5,
                    child: Text(
                      "Açık",
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4.5,
                      ),
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
        title: Padding(
          padding: EdgeInsets.only(left: SizeConfig.blockWidth),
          child: Text(
            'Ponsetya 1 Düzenle',
            style: TextStyle(
              fontFamily: "Champagne-Limousines-Bold",
              fontSize: SizeConfig.blockWidth * 6,
              color: Colors.green[900],
            ),
          ),
        ),
        centerTitle: true,
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

class BahcemBitkiEkle extends StatefulWidget{
@override
State<StatefulWidget> createState() => BahcemBitkiEkleState();
}

class BahcemBitkiEkleState extends State<BahcemBitkiEkle>{
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
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: SizeConfig.blockWidth),
            child: Text(
              'Bitki Ekle',
              style: TextStyle(
                fontFamily: "Champagne-Limousines-Bold",
                fontSize: SizeConfig.blockWidth * 6,
                color: Colors.green[900],
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[50],
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.green[900], //change your color here
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      maxLines: null,
                      cursorColor: Colors.green[900],
                      decoration: InputDecoration(
                        hintText: 'Bitkinin adı...',
                        hintStyle: TextStyle(
                          fontFamily: "Champagne-Limousines-Bold",
                          fontStyle: FontStyle.italic,
                        ),
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
                              color: Colors.grey[50],
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(SizeConfig.blockWidth * 3),
                              child: Image(
                                image: AssetImage("assets/images/postdef.png"),
                                fit: BoxFit.cover,
                              ),
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
                            decoration: InputDecoration(
                              hintText: 'Bitki hakkında notlar...',
                              hintStyle: TextStyle(
                                fontSize: SizeConfig.blockWidth * 4.5,
                                fontFamily: "Champagne-Limousines-Bold",
                                fontStyle: FontStyle.italic,
                              ),
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
                  Container(
                    height: SizeConfig.blockWidth * 20,
                    width: SizeConfig.blockWidth * 20,
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
                          "Ekle",
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

class AyarlarSayfasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AyarlarSayfasiState();
}

class AyarlarSayfasiState extends State<AyarlarSayfasi>{
  bool isSwitched = true;
  String heightInFeet = "null";
  int height = 180;
  String dropdownValue = 'Green Mornings';
  List<String> _locations = ['Green Mornings', 'Happy Day']; // Option 2
  String _selectedLocation; // Option 2
  var sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: SizeConfig.blockWidth),
            child: Text(
              'Ayarlar',
              style: TextStyle(
                fontFamily: "Champagne-Limousines-Bold",
                fontSize: SizeConfig.blockWidth * 6,
                color: Colors.green[900],
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.grey[50],
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.green[900], //change your color here
          ),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
              child: Text(
                "Bildirimler",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.green[900],
                  fontFamily: "Champagne-Limousines-Bold",
                  fontSize: SizeConfig.blockWidth * 5.5,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
              child: CustomSwitch(
                activeColor: Colors.green[900],
                value: isSwitched,
                onChanged: (value) {
                  print("VALUE : $value");
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 6, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
              child: Text(
                "Alarm Sesi",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.green[900],
                  fontFamily: "Champagne-Limousines-Bold",
                  fontSize: SizeConfig.blockWidth * 5.5,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
              child: DropdownButton(
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: Text(
                      location,
                      style: TextStyle(
                        color: Colors.black87,
                        fontFamily: "Champagne-Limousines-Bold",
                        fontSize: SizeConfig.blockWidth * 4,
                      ),
                    ),
                    value: location,
                  );
                }).toList(),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 6, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
              child: Text(
                "Alarm Yüksekliği",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.green[900],
                  fontFamily: "Champagne-Limousines-Bold",
                  fontSize: SizeConfig.blockWidth * 5.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, SizeConfig.blockWidth * 2),
              child: Container(
                child: Slider(
                  min: 0.0,
                  max: 10.0,
                  divisions: 5,
                  value: sliderValue,
                  activeColor: Colors.green[900],
                  inactiveColor: Colors.grey,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue = newValue;
                    });
                  },
                ),
              ),
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => HakkindaSayfasi()),),
                  child: Text(
                    "Hakkında",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.green[900],
                      fontFamily: "Champagne-Limousines-Bold",
                      fontSize: SizeConfig.blockWidth * 5.5,
                    ),
                  ),
                )),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () {
                  /*...*/
                },
                child: Text(
                  "Çıkış Yap",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.green[900],
                    fontFamily: "Champagne-Limousines-Bold",
                    fontSize: SizeConfig.blockWidth * 5.5,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}

class HakkindaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: SizeConfig.blockWidth),
          child: Text(
            'Hakkında',
            style: TextStyle(
              fontFamily: "Champagne-Limousines-Bold",
              fontSize: SizeConfig.blockWidth * 6,
              color: Colors.green[900],
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green[900], //change your color here
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\nBu uygulama Esra Polat, Nur Deniz Çaylı ve Minel Saygısever tarafından geliştirilmiştir.\nTüm Hakları Saklıdır.\n\nBizimle iletişime geçin:\ninfo@bahcemapp.com",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  color: Colors.black87,
                  fontFamily: "Champagne-Limousines-Bold",
                  fontSize: SizeConfig.blockWidth * 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoginSayfasi extends StatefulWidget {
  @override
  _LoginSayfasiState createState() => _LoginSayfasiState();
}

class _LoginSayfasiState extends State<LoginSayfasi> {
  final formKey = GlobalKey<FormState>();
  final _kullaniciAdi = TextEditingController();
  final _sifre = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 40, 0, SizeConfig.blockWidth * 10),
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
                                      color: Color.fromARGB(70, 0, 0, 0),
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
                                      hintText: "Kullanıcı Adı",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Champagne-Limousines-Bold',
                                        fontSize: SizeConfig.blockWidth * 4.5,
                                      ),
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
                                    controller: _sifre,
                                    decoration: InputDecoration(
                                      hintText: "Şifre",
                                      hintStyle: TextStyle(
                                        fontFamily: 'Champagne-Limousines-Bold',
                                        fontSize: SizeConfig.blockWidth * 4.5,
                                      ),
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
                              padding: EdgeInsets.only(bottom: SizeConfig.blockWidth * 1),
                              child: Container(
                                height: SizeConfig.blockWidth * 10,
                                width: SizeConfig.blockWidth * 26,
                                child: FlatButton(
                                    onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()),),
                                    child: Container(
                                      child: Text(
                                        "Giriş",
                                        style: TextStyle(
                                          fontSize: SizeConfig.blockWidth * 6.5,
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

                        Padding(
                          padding: EdgeInsets.only(top: SizeConfig.blockWidth * 4, bottom: SizeConfig.blockWidth * 4),
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: SizeConfig.blockWidth * 50,
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Üye değil misiniz?",
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.green[900],
                                    fontFamily: "Champagne-Limousines-Bold",
                                    fontSize: SizeConfig.blockWidth * 5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
                                child: Container(
                                  height: SizeConfig.blockWidth * 10,
                                  width: SizeConfig.blockWidth * 26,
                                  child: FlatButton(
                                      onPressed: () => Navigator.push(context, MaterialPageRoute(
                                          builder: (BuildContext context) => RegisterSayfasi()
                                      )),
                                      child: Container(
                                        child: Text(
                                          "Kayıt",
                                          style: TextStyle(
                                            fontSize: SizeConfig.blockWidth * 6.5,
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
                                  color: Color.fromARGB(70, 0, 0, 0),
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
                                  hintStyle: TextStyle(
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 4.5,
                                  ),
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
                                  hintStyle: TextStyle(
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 4.5,
                                  ),
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
                                  hintStyle: TextStyle(
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 4.5,
                                  ),
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
                                  hintStyle: TextStyle(
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 4.5,
                                  ),
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
                            height: SizeConfig.blockWidth * 10,
                            width: SizeConfig.blockWidth * 26,
                            child: FlatButton(
                                onPressed: () {},
                                child: Container(
                                  child: Text(
                                    "Kayıt",
                                    style: TextStyle(
                                      fontSize: SizeConfig.blockWidth * 6.5,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}