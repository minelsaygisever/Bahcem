import 'package:flutter/material.dart';
import 'package:my_project/blog_arama_sayfasi.dart';
import 'blog_anasayfa.dart';
import 'blog_profil.dart';
import 'package:my_project/SizeConfig.dart';

class BlogTabBar extends StatefulWidget {
  _BlogTabBarState createState() => _BlogTabBarState();
}

class _BlogTabBarState extends State<BlogTabBar> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(SizeConfig.blockWidth * 12.5),
          child: AppBar(
            backgroundColor: Colors.grey[50],
            elevation: 0.0,
            bottom: TabBar(
              controller: _tabController,
              indicatorColor:Colors.green[900],
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(
                  icon:Image.asset(
                    "assets/icons/home.png",
                    color: Colors.green[900],
                    height: SizeConfig.blockWidth * 5,
                    width: SizeConfig.blockWidth * 5,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/icons/search.png",
                    color: Colors.green[900],
                    height: SizeConfig.blockWidth * 5,
                    width: SizeConfig.blockWidth * 5,
                  ),
                ),
                Tab(
                  icon: Image.asset(
                    "assets/icons/user.png",
                    color: Colors.green[900],
                    height: SizeConfig.blockWidth * 5,
                    width: SizeConfig.blockWidth * 5,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            BlogAnaSayfa(),
            BlogSearchPage(),
            BlogProfilePage()
          ],
        ),
      ),
    );
  }
}
