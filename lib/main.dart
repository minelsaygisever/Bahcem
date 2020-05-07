
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

import 'bahcem_sayfasi.dart';
import 'bitkini_tani_sayfasi.dart';
import 'blog_anasayfa.dart';
import 'ayarlar_sayfasi.dart';
import 'acilis_sayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bahçem',
      home: AcilisSayfasi(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static int _selectedItem = 1;
  var _pages = [BitkiniTaniSayfasi(), BahcemSayfasi(), BlogAnaSayfa()];
  var _pageController = PageController(initialPage: _selectedItem);
  static var _zeroIconSize = SizeConfig.blockWidth * 5;
  static var _oneIconSize = SizeConfig.blockWidth * 8;
  static var _twoIconSize = SizeConfig.blockWidth * 5;
  static var _zeroTextSize = SizeConfig.blockWidth * 4;
  static var _oneTextSize = SizeConfig.blockWidth * 0;
  static var _twoTextSize = SizeConfig.blockWidth * 4;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:  AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 3, 0, 0),
          child: Text(
            'Bahçem',
            style: TextStyle(
              fontFamily: 'Photoshoot',
              color: Colors.green[900],
              fontSize: SizeConfig.blockWidth * 5,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(SizeConfig.blockWidth * 0.2,
                    SizeConfig.blockWidth * 0.2,),
                  blurRadius: SizeConfig.blockWidth * 0.2,
                  color: Color.fromARGB(70, 0, 0, 0),
                ),
              ],
            ),
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, SizeConfig.blockWidth * 4, 0),
            child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AyarlarSayfasi()),),
              child: Image.asset(
                'assets/icons/settings.png',
                width: SizeConfig.blockWidth * 7,
                height: SizeConfig.blockWidth * 7,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
      ),
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
            if(index == 0){
              _zeroIconSize = SizeConfig.blockWidth * 8;
              _oneIconSize = SizeConfig.blockWidth * 5;
              _twoIconSize = SizeConfig.blockWidth * 5;
              _zeroTextSize = SizeConfig.blockWidth * 0;
              _oneTextSize = SizeConfig.blockWidth * 4;
              _twoTextSize = SizeConfig.blockWidth * 4;
            } else if (index == 1){
              _zeroIconSize = SizeConfig.blockWidth * 5;
              _oneIconSize = SizeConfig.blockWidth * 8;
              _twoIconSize = SizeConfig.blockWidth * 5;
              _zeroTextSize = SizeConfig.blockWidth * 4;
              _oneTextSize = SizeConfig.blockWidth * 0;
              _twoTextSize = SizeConfig.blockWidth * 4;
            } else if (index == 2){
              _zeroIconSize = SizeConfig.blockWidth * 5;
              _oneIconSize = SizeConfig.blockWidth * 5;
              _twoIconSize = SizeConfig.blockWidth * 8;
              _zeroTextSize = SizeConfig.blockWidth * 4;
              _oneTextSize = SizeConfig.blockWidth * 4;
              _twoTextSize = SizeConfig.blockWidth * 0;
            }
          });

        },
        controller: _pageController,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem, duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
          if(index == 0){
            _zeroIconSize = SizeConfig.blockWidth * 8;
            _oneIconSize = SizeConfig.blockWidth * 5;
            _twoIconSize = SizeConfig.blockWidth * 5;
            _zeroTextSize = SizeConfig.blockWidth * 0;
            _oneTextSize = SizeConfig.blockWidth * 4;
            _twoTextSize = SizeConfig.blockWidth * 4;
          } else if (index == 1){
            _zeroIconSize = SizeConfig.blockWidth * 5;
            _oneIconSize = SizeConfig.blockWidth * 8;
            _twoIconSize = SizeConfig.blockWidth * 5;
            _zeroTextSize = SizeConfig.blockWidth * 4;
            _oneTextSize = SizeConfig.blockWidth * 0;
            _twoTextSize = SizeConfig.blockWidth * 4;
          } else if (index == 2){
            _zeroIconSize = SizeConfig.blockWidth * 5;
            _oneIconSize = SizeConfig.blockWidth * 5;
            _twoIconSize = SizeConfig.blockWidth * 8;
            _zeroTextSize = SizeConfig.blockWidth * 4;
            _oneTextSize = SizeConfig.blockWidth * 4;
            _twoTextSize = SizeConfig.blockWidth * 0;
          }
        },
        backgroundColor: Colors.green[900],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 0.6, 0, SizeConfig.blockWidth * 0.6),
              child: Image.asset(
                "assets/images/information.jpg",
                color: Colors.grey[50],
                height: _zeroIconSize,
                width: _zeroIconSize,
              ),
            ),
            title: Text(
              "Bitkini tanı",
              style: TextStyle(
                color: Colors.grey[50],
                fontFamily: 'Champagne-Limousines-Bold',
                fontSize: _zeroTextSize,
              ),),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 0.6, 0, SizeConfig.blockWidth * 0.6),
              child: Image.asset(
                "assets/images/flower.jpg",
                color: Colors.grey[50],
                height: _oneIconSize,
                width:  _oneIconSize,
              ),
            ),
            title: Text(
              "Bahçem",
              style: TextStyle(
                color: Colors.grey[50],
                fontFamily: 'Champagne-Limousines-Bold',
                fontSize: _oneTextSize,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 0.6, 0, SizeConfig.blockWidth * 0.6),
              child: Image.asset(
                "assets/images/photo-camera.jpg",
                color: Colors.grey[50],
                height: _twoIconSize,
                width: _twoIconSize,
              ),
            ),
            title: Text(
              "Blog",
              style: TextStyle(
                color: Colors.grey[50],
                fontFamily: 'Champagne-Limousines-Bold',
                fontSize: _twoTextSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
