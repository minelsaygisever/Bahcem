import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/blog_post_model.dart';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:bahcem_deneme/services/blog_service.dart';
import 'package:bahcem_deneme/services/user_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'blog_gonderi_ekle_view.dart';
import 'blog_profil_duzenle_view.dart';

class BlogProfilePage extends StatefulWidget {
  @override
  _BlogProfilePageState createState() => _BlogProfilePageState();
}

class KullaniciDetail {
  String userIdDetail;
  String blogIsimDetail;
  String bioDetail;
  String profilImgDetail;
  int indexDetail;

  KullaniciDetail(
      {this.userIdDetail,
      this.blogIsimDetail,
      this.bioDetail,
      this.profilImgDetail,
      this.indexDetail});
}

class _BlogProfilePageState extends State<BlogProfilePage> {
  BlogService blogService;
  BlogPostModel blogPostModel;
  UserModel userModel;
  UserService userService;

  int indexTemp = 0;

  int gonderiSayisi = 0;

  Future<List<UserModel>> _users;
  Future<List<BlogPostModel>> _posts;

  @override
  void initState() {
    super.initState();
    blogService = BlogService();
    userService = UserService();
    _users = userService.getUser();
    _posts =  blogService.getBlogPostModel();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Stack(children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 1,
              SizeConfig.blockWidth * 33, SizeConfig.blockWidth * 1, 0),
          child: FutureBuilder(
            future: _posts,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.done:
                  if (snapshot.hasData)
                    return _kullaniciPosts(snapshot.data);
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
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 1,
                  SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 1, 0),
              child: FutureBuilder(
                future: _users,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.done:
                      if (snapshot.hasData)
                        return _profileBilgi(snapshot.data);
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
      ]),
    );
  }

  Widget _kullaniciPosts(List<BlogPostModel> list) {
    List<BlogPostModel> secondList = [];
    BlogService.postLength = list.length;
    for (int i = 0; i < list.length; i++) {
      if (list[i].userId == BlogService.user.uid) {
        secondList.add(list[i]);
      }
    }
    gonderiSayisi = secondList.length;
    return GridView.builder(
        itemCount: secondList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: SizeConfig.blockWidth * 1,
            mainAxisSpacing: SizeConfig.blockWidth * 1,
            crossAxisCount: 3),
        itemBuilder: (context, index) => _post(secondList[index]));
  }

  Widget _post(blogPostModel) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(blogPostModel.imgUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 0),
        ),
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  Widget _profileBilgi(List<UserModel> list) {
    UserModel currentUser;
    UserService.userLength = list.length;
    for (int i = 0; i < list.length; i++) {
      if (list[i].userId == UserService.user.uid) {
        currentUser = list[i];
        indexTemp = i;
        break;
      }
    }
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
                  child: CircleAvatar(
                    backgroundColor: SizeConfig.almostWhite,
                    backgroundImage: currentUser.profilImg == ""
                        ? AssetImage("assets/icons/user.png")
                        : NetworkImage(currentUser.profilImg),
                    radius: SizeConfig.blockWidth * 10,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      currentUser.kullaniciAdi,
                      style: SizeConfig.yaziUserName,
                    ),

                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0.0, SizeConfig.blockWidth * 2.5, 0.0, 0.0),
                      child: Text(
                        currentUser.blogIsim,
                        style: SizeConfig.yaziAciklama,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
                      child: Text(
                        currentUser.bio,
                        style: SizeConfig.yaziProfilKucukAciklama,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: SizeConfig.blockWidth * 2),
                  child: new GestureDetector(
                    onTap: () {
                      final kullaniciDetail = KullaniciDetail(
                          blogIsimDetail: currentUser.blogIsim,
                          bioDetail: currentUser.bio,
                          profilImgDetail: currentUser.profilImg,
                      userIdDetail: currentUser.userId);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BlogProfilDuzenle(
                                kullaniciDetail.userIdDetail,
                                kullaniciDetail.blogIsimDetail,
                                kullaniciDetail.bioDetail,
                                kullaniciDetail.profilImgDetail,
                                indexTemp)),
                      );
                    },
                    child: Container(
                      height: SizeConfig.blockHeight * 12,
                      alignment: Alignment.topCenter,
                      child: new Image.asset(
                        "assets/icons/more.png",
                        color: Colors.black45,
                        height: SizeConfig.blockWidth * 4,
                        width: SizeConfig.blockWidth * 4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    ]);
  }

  //servisten data dönmediyse bu gelecek
  Widget _notFoundWidget() {
    return Text("Post Yok");
  }

  //bir hata meydana geldiyse servis cevap vermediyse bu dönecek
  Widget get _waitingWidget => Center(
          child: CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(SizeConfig.green),
      ));
}
