import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'bitkini_tani_bitki_goruntule.dart';

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
                        style: SizeConfig.yaziAciklamaBaslik,
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
                        style: SizeConfig.yaziAciklamaBaslik,
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
                        style: SizeConfig.yaziAciklamaBaslik,
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