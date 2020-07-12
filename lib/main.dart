import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:bahcem_deneme/services/auth_service.dart';
import 'package:bahcem_deneme/view/acilis_sayfasi_view.dart';
import 'package:bahcem_deneme/view/login/login_sayfasi_view.dart';
import 'package:bahcem_deneme/wrapper.dart';
import 'package:flutter/material.dart';
import 'view/bitkini_tani/bitkini_tani_view.dart';
import 'package:provider/provider.dart';
import 'view/bahcem/bahcem_sayfasi_view.dart';
import 'view/ayarlar_sayfasi_view.dart';
import 'view/blog/blog_tab_bar_view.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AuthModel>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Bahçem',
        initialRoute: "/",
        routes: {
          "/": (context) => AcilisSayfasi(),
          "/wrapper": (context) => Wrapper(),
          "/login": (context) => LoginSayfasi(),
        },
      ),
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
  var _pages = [BitkiniTaniView(), BahcemSayfasi(), BlogTabBar()];
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
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 3, 0, 0),
          child: Text(
            'Bahçem',
            style: TextStyle(
              fontFamily: 'Photoshoot',
              color: SizeConfig.green,
              fontSize: SizeConfig.blockWidth * 5,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(
                    SizeConfig.blockWidth * 0.2,
                    SizeConfig.blockWidth * 0.2,
                  ),
                  blurRadius: SizeConfig.blockWidth * 0.2,
                  color: Color.fromARGB(60, 0, 0, 0),
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
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AyarlarSayfasi()),
              ),
              child: Image.asset(
                'assets/icons/settings.png',
                width: SizeConfig.blockWidth * 7,
                height: SizeConfig.blockWidth * 7,
              ),
            ),
          ),
        ],
        backgroundColor: SizeConfig.almostWhite,
        elevation: 0.0,
      ),
      body: PageView(
        children: _pages,
        onPageChanged: (index) {
          setState(() {
            _selectedItem = index;
            if (index == 0) {
              _zeroIconSize = SizeConfig.blockWidth * 8;
              _oneIconSize = SizeConfig.blockWidth * 5;
              _twoIconSize = SizeConfig.blockWidth * 5;
              _zeroTextSize = SizeConfig.blockWidth * 0;
              _oneTextSize = SizeConfig.blockWidth * 4;
              _twoTextSize = SizeConfig.blockWidth * 4;
            } else if (index == 1) {
              _zeroIconSize = SizeConfig.blockWidth * 5;
              _oneIconSize = SizeConfig.blockWidth * 8;
              _twoIconSize = SizeConfig.blockWidth * 5;
              _zeroTextSize = SizeConfig.blockWidth * 4;
              _oneTextSize = SizeConfig.blockWidth * 0;
              _twoTextSize = SizeConfig.blockWidth * 4;
            } else if (index == 2) {
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
        currentIndex: _selectedItem,
        onTap: (index) {
          setState(() {
            _selectedItem = index;
            _pageController.animateToPage(_selectedItem,
                duration: Duration(milliseconds: 200), curve: Curves.linear);
          });
          if (index == 0) {
            _zeroIconSize = SizeConfig.blockWidth * 8;
            _oneIconSize = SizeConfig.blockWidth * 5;
            _twoIconSize = SizeConfig.blockWidth * 5;
            _zeroTextSize = SizeConfig.blockWidth * 0;
            _oneTextSize = SizeConfig.blockWidth * 4;
            _twoTextSize = SizeConfig.blockWidth * 4;
          } else if (index == 1) {
            _zeroIconSize = SizeConfig.blockWidth * 5;
            _oneIconSize = SizeConfig.blockWidth * 8;
            _twoIconSize = SizeConfig.blockWidth * 5;
            _zeroTextSize = SizeConfig.blockWidth * 4;
            _oneTextSize = SizeConfig.blockWidth * 0;
            _twoTextSize = SizeConfig.blockWidth * 4;
          } else if (index == 2) {
            _zeroIconSize = SizeConfig.blockWidth * 5;
            _oneIconSize = SizeConfig.blockWidth * 5;
            _twoIconSize = SizeConfig.blockWidth * 8;
            _zeroTextSize = SizeConfig.blockWidth * 4;
            _oneTextSize = SizeConfig.blockWidth * 4;
            _twoTextSize = SizeConfig.blockWidth * 0;
          }
        },
        backgroundColor: SizeConfig.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 0.6, 0,
                  SizeConfig.blockWidth * 0.6),
              child: Image.asset(
                "assets/images/information.jpg",
                color: SizeConfig.almostWhite,
                height: _zeroIconSize,
                width: _zeroIconSize,
              ),
            ),
            title: Text(
              "Bitkini tanı",
              style: TextStyle(
                color: SizeConfig.almostWhite,
                fontFamily: 'Champagne-Limousines-Bold',
                fontSize: _zeroTextSize,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 0.6, 0,
                  SizeConfig.blockWidth * 0.6),
              child: Image.asset(
                "assets/icons/flower.png",
                color: SizeConfig.almostWhite,
                height: _oneIconSize,
                width: _oneIconSize,
              ),
            ),
            title: Text(

              "Bahçem",
              style: TextStyle(
                color: SizeConfig.almostWhite,
                fontFamily: 'Champagne-Limousines-Bold',
                fontSize: _oneTextSize,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 0.6, 0,
                  SizeConfig.blockWidth * 0.6),
              child: Image.asset(
                "assets/images/photo-camera.jpg",
                color: SizeConfig.almostWhite,
                height: _twoIconSize,
                width: _twoIconSize,
              ),
            ),
            title: Text(
              "Blog",
              style: TextStyle(
                color: SizeConfig.almostWhite,
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
