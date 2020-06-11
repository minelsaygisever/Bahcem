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

    return new Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0.0),
            child: Padding(
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
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: userService.getCurrentUser(kullaniciAdi),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      if (snapshot.hasData)
                        return kullanicilarListView(context, snapshot);
                      else
                        //servis geldi ama data yoksa
                        return _notFoundWidget();
                      break;
                  //servisten dönemediyse, hata varsa
                    default:
                      return _waitingWidget;
                  }
                }),
          ),
        ],
      ),

    );
  }

  Widget kullanicilarListView(BuildContext context, AsyncSnapshot snapshot) {
    List<UserModel> values = snapshot.data;
    return new ListView.builder(
      itemCount: values.length,
      itemBuilder: (BuildContext context, int index) {
        return new Column(
          children: <Widget>[
            new ListTile(
              title: new GestureDetector(
                onTap: () {
                  final kullaniciDetail = BlogSearchPage(
                      userIdDetail: values[index].userId,
                      blogIsimDetail: values[index].blogIsim,
                      bioDetail: values[index].bio,
                      profilImgDetail: values[index].profilImg,
                      kullaniciAdiDetail: values[index].kullaniciAdi);

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
                    padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0,
                        SizeConfig.blockWidth * 4, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            (values[index].kullaniciAdi != "")
                                ? Padding(
                                    padding: EdgeInsets.fromLTRB(0.0, 0.0,
                                        SizeConfig.blockWidth * 4, 0.0),
                                    child: CircleAvatar(
                                      backgroundColor: SizeConfig.almostWhite,
                                      backgroundImage: values[index]
                                                  .profilImg ==
                                              ""
                                          ? AssetImage("assets/icons/user.png")
                                          : NetworkImage(
                                              values[index].profilImg),
                                      radius: SizeConfig.blockWidth * 10,
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsets.fromLTRB(0.0, 0.0,
                                        SizeConfig.blockWidth * 4, 0.0),
                                  ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  values[index].kullaniciAdi,
                                  style: SizeConfig.yaziUserName,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0.0,
                                      SizeConfig.blockWidth * 2.5, 0.0, 0.0),
                                  child: Text(
                                    values[index].blogIsim,
                                    style: SizeConfig.yaziAciklama,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
                                  child: Text(
                                    values[index].bio,
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
              ),
            ),
            new Divider(
              height: 2.0,
            ),
          ],
        );
      },
    );
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
                  (userModel.kullaniciAdi != "")
                      ? Padding(
                          padding: EdgeInsets.fromLTRB(
                              0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
                          child: CircleAvatar(
                            backgroundColor: SizeConfig.almostWhite,
                            backgroundImage: userModel.profilImg == ""
                                ? AssetImage("assets/icons/user.png")
                                : NetworkImage(userModel.profilImg),
                            radius: SizeConfig.blockWidth * 10,
                          ),
                        )
                      : Padding(
                          padding: EdgeInsets.fromLTRB(
                              0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
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
        valueColor:
            new AlwaysStoppedAnimation<Color>(SizeConfig.backgroundColor),
      ));
}
