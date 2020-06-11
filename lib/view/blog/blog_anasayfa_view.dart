import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/blog_post_model.dart';
import 'package:bahcem_deneme/services/blog_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class BlogAnaSayfaView extends StatefulWidget {
  @override
  _BlogAnaSayfaViewState createState() => _BlogAnaSayfaViewState();
}

class _BlogAnaSayfaViewState extends State<BlogAnaSayfaView> {
  //servisi bağlayıp veri kullanmak için state tanımlıyoruz
  //initstate olması lazım çünkü başlangıçta ilk gelecek veriyi çekiyoruz
  //güncelleme yapmak isteseydik setstate kullanırdık
  BlogService service;

  @override
  void initState() {
    super.initState();
    service = BlogService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: FutureBuilder(
        future: service.getBlogPostModel(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            //connection done ile kontrol ediliyor. active, waiting vs durumlarda bu şekilde kontrol edilebilir
            case ConnectionState.done:
              //datası var mı
              if (snapshot.hasData)
                return _listAnasayfa(snapshot.data);
              else {
                //servis geldi ama data yoksa
                BlogService.postLength = 0;
                return _notFoundWidget;
              }
              break;
            //servisten dönemediyse, hata varsa
            default:
              return _waitingWidget;
          }
        },
      ),
    );
  }
}

//uygulamamızın body si burada olacak
Widget _listAnasayfa(List<BlogPostModel> list) {
  BlogService.postLength = list.length;
  list.sort((a, b) =>
      -DateTime.parse(a.createdAt).compareTo(DateTime.parse(b.createdAt)));
  return Padding(
    padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
    child: ListView.builder(
        itemCount: list.length, itemBuilder: (context, j) => _post(list[j])),
  );
}

Widget _post(BlogPostModel post) {
  return Center(
    child: Padding(
      padding: EdgeInsets.fromLTRB(0.0, SizeConfig.blockWidth * 1, 0.0, 0.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.blockWidth * 2,
                right: SizeConfig.blockWidth * 3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: SizeConfig.green,
                      backgroundImage: NetworkImage(post.profileImg),
                      radius: SizeConfig.blockWidth * 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: SizeConfig.blockWidth * 2),
                      child: Text(
                        post.kullaniciAdi,
                        style: SizeConfig.yaziUserName,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
            child: Image(
              image: NetworkImage(post.imgUrl),
              height: SizeConfig.screenWidth,
              width: SizeConfig.screenWidth,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                0, SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0,
                      SizeConfig.blockWidth * 2, 0),
                  child: Container(
                    width: SizeConfig.screenWidth - SizeConfig.blockWidth * 4,
                    child: Text(
                      post.comment,
                      maxLines: null,
                      style: SizeConfig.yaziAciklama,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

//servisten data dönmediyse bu gelecek
Widget get _notFoundWidget => Center(
      child: Text("Not Found"),
    );

//bir hata meydana geldiyse servis cevap vermediyse bu dönecek
Widget get _waitingWidget => Center(
        child: CircularProgressIndicator(
      valueColor: new AlwaysStoppedAnimation<Color>(SizeConfig.green),
    ));
