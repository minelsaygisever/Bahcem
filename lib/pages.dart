import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class FirstPage extends StatelessWidget{
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
                onTap: () => Navigator.pushNamed(context, "/bitkini_tani_bitki_bilgisi"),
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
                onTap: () => Navigator.pushNamed(context, "/bitkini_tani_bitki_bilgisi"),
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
                onTap: () => Navigator.pushNamed(context, "/bitkini_tani_bitki_bilgisi"),
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

class SecondPage extends StatelessWidget{
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
                onTap: () => Navigator.pushNamed(context, "/bahcem_bitki_goruntule"),
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
                onTap: () => Navigator.pushNamed(context, "/bahcem_bitki_ekle"),
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

class ThirdPage extends StatelessWidget{
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
              onTap: () => Navigator.pushNamed(context, "/settings_page"),
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
        automaticallyImplyLeading: false,
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