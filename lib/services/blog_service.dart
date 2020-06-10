import 'dart:convert';
import 'dart:io';
import 'package:bahcem_deneme/models/blog_post_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class BlogService {
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";
  static int postLength;
  static FirebaseUser user;


  sendPost(String comment, String createdAt, String imgUrl, int likeCount, String kullaniciAdi, String profileImg) async {
    user = await FirebaseAuth.instance.currentUser();
    FirebaseDatabase.instance.reference().child('BlogPosts').child(postLength.toString()).update({
      'comment': comment,
      'created_at': createdAt,
      'img_url': imgUrl,
      'like_count': likeCount,
      'user_id': user.uid,
      'kullaniciAdi' : kullaniciAdi,
      'profileImg' : profileImg
    });
  }

  Future<List<BlogPostModel>> getBlogPostModel() async {
    user = await FirebaseAuth.instance.currentUser();
    final response = await http.get("$FIREBASE_URL/BlogPosts.json");
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json.decode(response.body);
        final blogPostList = jsonModel
            .map((e) => BlogPostModel.fromJson(e as Map<String, dynamic>))
            .toList()
            .cast<BlogPostModel>();
        return blogPostList;
        break;

      default:
        return Future.error(response.statusCode);
    }
  }

}
