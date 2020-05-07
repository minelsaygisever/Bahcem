import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'blog_profil_duzenle.dart';
import 'blog_gonderi_ekle.dart';

class BlogFriendProfile extends StatefulWidget {
  @override
  _BlogFriendProfileState createState() => _BlogFriendProfileState();
}

class _BlogFriendProfileState extends State<BlogFriendProfile> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 4, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/minel.jpg'),
                          radius: SizeConfig.blockWidth * 10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'minelsaygisever',
                            style: TextStyle(
                              color: Colors.green[900],
                              fontFamily: 'Champagne-Limousines-Bold',
                              fontSize: SizeConfig.blockWidth * 5.5,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 1.5 , 0.0),
                                child: Text(
                                  '6 gönderi',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 3.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, SizeConfig.blockWidth * 1.5 , 0.0),
                                child: Text(
                                  '25 takipçi',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 3.5,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, 0, 0.0),
                                child: Text(
                                  '20 takip edilen',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 3.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 2.5, 0.0, 0.0),
                            child: Text(
                              'Minel',
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Champagne-Limousines-Bold',
                                fontSize: SizeConfig.blockWidth * 4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Welcome to my green life!',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 3.5,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 8, 0, 0, 0),
                                  child: Container(
                                    height: SizeConfig.blockWidth * 6,
                                    width: SizeConfig.blockWidth * 23,
                                    child: FlatButton(
                                        onPressed: () {
                                          //formKey.currentState.reset();
                                          print("ok");
                                        },
                                        child: Text(
                                          "Takip Et",
                                          style: TextStyle(
                                            fontSize: SizeConfig.blockWidth * 3.5,
                                            color: Colors.white,
                                            fontFamily: "Champagne-Limousines-Bold",
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
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 6, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/photo1.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo2.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo3.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 3 / 4, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/photo4.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo5.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
                      ),
                      Image(
                        image: AssetImage('assets/images/photo6.jpg'),
                        height: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        width: (SizeConfig.screenWidth - (3 * SizeConfig.blockWidth)) / 3,
                        fit: BoxFit.cover,
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
