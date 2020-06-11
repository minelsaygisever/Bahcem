import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:bahcem_deneme/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'blog_arkadas_profili_view.dart';

class BlogSearchPage extends StatefulWidget {
  String userIdDetail;
  String blogIsimDetail;
  String bioDetail;
  String profilImgDetail;
  String kullaniciAdiDetail;

  BlogSearchPage(
      {this.userIdDetail,
        this.blogIsimDetail,
        this.bioDetail,
        this.profilImgDetail,
        this.kullaniciAdiDetail});

  @override
  _BlogSearchPageState createState() => _BlogSearchPageState();
}

class _BlogSearchPageState extends State<BlogSearchPage> {
  String kullaniciAdi = "";

  UserService userService;
  UserModel userModel;

  @override
  void initState() {
    super.initState();
    userService = UserService();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final _search = TextEditingController();
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding:
                  EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0.0),
                  child: Column(
                    children: <Widget>[
                      Theme(
                          data: new ThemeData(
                            primaryColor: SizeConfig.green,
                            primaryColorDark: SizeConfig.green,
                          ),
                          child: Container(
                            height: SizeConfig.blockWidth * 16,
                            child: new TextFormField(
                              cursorColor: SizeConfig.green,
                              onChanged: (val) {
                                setState(() => kullaniciAdi = val);
                              },
                              decoration: new InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(
                                    0, SizeConfig.blockWidth * 2, 0, 0),
                                filled: true,
                                fillColor: SizeConfig.almostWhite,
                                border: new OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: SizeConfig.almostWhite)),
                                hintText: 'Arama',
                                prefixIcon: GestureDetector(
                                  onTap: () {
                                    print("gesture");
                                  },
                                  child: const Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2,
                SizeConfig.blockWidth * 20, SizeConfig.blockWidth * 2, 0.0),
            child: FutureBuilder(
              future: userService.getUser(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    if (snapshot.hasData)
                      return _kullanicilar(snapshot.data);
                    else
                      //servis geldi ama data yoksa
                      return _notFoundWidget();
                    break;
                  //servisten dönemediyse, hata varsa
                  default:
                    return _waitingWidget;
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _kullanicilar(List<UserModel> list) {
    List<UserModel> resultList = [];
    for (int i = 0; i < list.length; i++) {
      if (list[i].kullaniciAdi == kullaniciAdi) {
        resultList.add(list[i]);
      }
    }

    return GridView.builder(
        itemCount: resultList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: SizeConfig.blockWidth * 1,
            mainAxisSpacing: SizeConfig.blockWidth * 1,
            crossAxisCount: 1),
        itemBuilder: (context, index) => _body(resultList[index]));
  }

  Widget _body(userModel) {
    return new GestureDetector(
      onTap: () {
        final kullaniciDetail = BlogSearchPage(
          userIdDetail: userModel.userId,
                    blogIsimDetail: userModel.blogIsim,
                    bioDetail: userModel.bio,
                    profilImgDetail: userModel.profilImg,
                    kullaniciAdiDetail: userModel.kullaniciAdi);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BlogFriendProfile(
                          kullaniciDetail.userIdDetail,
                          kullaniciDetail.blogIsimDetail,
                          kullaniciDetail.bioDetail,
                          kullaniciDetail.profilImgDetail,
                        kullaniciDetail.kullaniciAdiDetail)),
                );
      },
      child: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(
              SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
                    child: CircleAvatar(
                      backgroundColor: SizeConfig.almostWhite,
                      backgroundImage: userModel.profilImg == ""
                          ? AssetImage("assets/icons/user.png")
                          : NetworkImage(userModel.profilImg),
                      radius: SizeConfig.blockWidth * 10,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userModel.kullaniciAdi,
                        style: SizeConfig.yaziUserName,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0.0, SizeConfig.blockWidth * 2.5, 0.0, 0.0),
                        child: Text(
                          userModel.blogIsim,
                          style: SizeConfig.yaziAciklama,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
                        child: Text(
                          userModel.bio,
                          style: SizeConfig.yaziProfilKucukAciklama,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }

  Widget _notFoundWidget() {
    return Text("Post Yok");
  }

  //bir hata meydana geldiyse servis cevap vermediyse bu dönecek
  Widget get _waitingWidget => Center(
          child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(SizeConfig.green),
      ));
}
