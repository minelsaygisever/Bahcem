import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

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
                    height: SizeConfig.blockWidth * 12 ,
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
                          height: SizeConfig.blockWidth * 12,
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
                          height: SizeConfig.blockWidth * 12,
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
                          height: SizeConfig.blockWidth * 12,
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
                    height: SizeConfig.blockWidth * 12 ,
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
                          height: SizeConfig.blockWidth * 12,
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
                          height: SizeConfig.blockWidth * 12,
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
                          height: SizeConfig.blockWidth * 12,
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
                    height: SizeConfig.blockWidth * 12 ,
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
                      height:  SizeConfig.blockWidth * 12,
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
                    height: SizeConfig.blockWidth * 12 ,
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
                      height:  SizeConfig.blockWidth * 12,
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
                    height: SizeConfig.blockWidth * 12 ,
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
                      height:  SizeConfig.blockWidth * 12,
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
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    height: SizeConfig.blockWidth * 12,
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
                    height: SizeConfig.blockWidth * 12 ,
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
                      height:  SizeConfig.blockWidth * 12,
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