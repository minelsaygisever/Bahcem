import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'blog_anasayfa_view.dart';
import 'blog_arama_sayfasi_view.dart';
import 'blog_profil_view.dart';
import 'blog_gonderi_ekle_view.dart';

class BlogTabBar extends StatefulWidget {
  _BlogTabBarState createState() => _BlogTabBarState();
}

class _BlogTabBarState extends State<BlogTabBar>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.blockWidth * 15),
          child: AppBar(
            backgroundColor: SizeConfig.almostWhite,
            elevation: 0.0,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor: SizeConfig.green,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  icon: Image.asset(
                    "assets/icons/home.png",
                    color: SizeConfig.green,
                    height: SizeConfig.blockWidth * 5.5,
                    width: SizeConfig.blockWidth * 5.5,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/icons/search.png",
                    color: SizeConfig.green,
                    height: SizeConfig.blockWidth * 5.5,
                    width: SizeConfig.blockWidth * 5.5,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/icons/plus.png",
                    color: SizeConfig.green,
                    height: SizeConfig.blockWidth * 5.5,
                    width: SizeConfig.blockWidth * 5.5,
                  ),
                ),
                /*Tab(
                  icon: Image.asset(
                    "assets/icons/flower.png",
                    color: SizeConfig.green,
                    height: SizeConfig.blockWidth * 5.5,
                    width: SizeConfig.blockWidth * 5.5,
                  ),
                ),*/
                Tab(
                  icon: Image.asset(
                    "assets/icons/user.png",
                    color: SizeConfig.green,
                    height: SizeConfig.blockWidth * 5.5,
                    width: SizeConfig.blockWidth * 5.5,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            BlogAnaSayfaView(),
            BlogSearchPage(),
            BlogGonderiEkle(),
            //BlogSearchPage(),
            BlogProfilePage()
          ],
        ),
      ),
    );
  }
}
