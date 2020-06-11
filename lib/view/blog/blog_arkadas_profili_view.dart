import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/blog_post_model.dart';
import 'package:bahcem_deneme/services/blog_service.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogFriendProfile extends StatefulWidget {
  final String blogIsimDetail;
  final String bioDetail;
  final String profilImgDetail;
  final String userIdDetail;
  final String kullaniciAdiDetail;

  const BlogFriendProfile(
      this.userIdDetail,
      this.blogIsimDetail,
      this.bioDetail,
      this.profilImgDetail,
      this.kullaniciAdiDetail);
  @override
  _BlogFriendProfileState createState() => _BlogFriendProfileState();
}

class _BlogFriendProfileState extends State<BlogFriendProfile> {
  BlogService blogService;
  BlogPostModel blogPostModel;

  int gonderiSayisi = 0;

  @override
  void initState() {
    super.initState();
    blogService = BlogService();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      appBar: AppBar(
        title: Text(
          widget.kullaniciAdiDetail,
          style: SizeConfig.yaziAppbarBaslik,
        ),
        backgroundColor: SizeConfig.almostWhite,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: SizeConfig.green, //change your color here
        ),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 1,
                SizeConfig.blockWidth * 33, SizeConfig.blockWidth * 1, 0),
            child: FutureBuilder(
              future: blogService.getBlogPostModel(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    if (snapshot.hasData){
                      print("has data");
                      return _kullaniciPosts(snapshot.data);}
                    else{
                      //servis geldi ama data yoksa
                      return _notFoundWidget();}
                    break;
                //servisten dönemediyse, hata varsa
                  default:
                    return _waitingWidget;
                }
              },
            ),
          ),
          Padding(
            padding:
            EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 4, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0,
                      SizeConfig.blockWidth * 4, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            0.0, 0.0, SizeConfig.blockWidth * 4, 0.0),
                        child: CircleAvatar(
                          backgroundColor: SizeConfig.almostWhite,
                          backgroundImage: widget.profilImgDetail == ""
                              ? AssetImage("assets/icons/user.png")
                              : NetworkImage(widget.profilImgDetail),
                          radius: SizeConfig.blockWidth * 10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.kullaniciAdiDetail,
                            style: TextStyle(
                              color: SizeConfig.green,
                              fontFamily: 'Champagne-Limousines-Bold',
                              fontSize: SizeConfig.blockWidth * 5.5,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0.0, SizeConfig.blockWidth * 2.5, 0.0, 0.0),
                            child: Text(
                              widget.blogIsimDetail,
                              style: TextStyle(
                                color: SizeConfig.almostBlack,
                                fontFamily: 'Champagne-Limousines-Bold',
                                fontSize: SizeConfig.blockWidth * 4,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                                0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  widget.bioDetail,
                                  style: TextStyle(
                                    color: SizeConfig.almostBlack,
                                    fontFamily: 'Champagne-Limousines-Bold',
                                    fontSize: SizeConfig.blockWidth * 3.5,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _kullaniciPosts(List<BlogPostModel> list) {
    List<BlogPostModel> secondList = [];
    BlogService.postLength = list.length;
    for (int i = 0; i < list.length; i++) {
      if (list[i].userId == widget.userIdDetail) {
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
