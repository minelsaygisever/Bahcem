import 'dart:convert';
import 'dart:io';
import 'package:bahcem_deneme/models/blog_post_model.dart';
import 'package:http/http.dart' as http;

class BlogService {
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";




  //minelin anasayfa için yazdığı kısım (DOKUNMA)
  Future<List<BlogPostModel>> getBlogAnasayfaModel() async {
    final response = await http.get("$FIREBASE_URL/BlogPosts.json");

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json
            .decode(response.body);
        final bitkiniTaniList = jsonModel
            .map((e) => BlogPostModel.fromJson(e as Map<String, dynamic>))
            .toList().cast<BlogPostModel>();
        return bitkiniTaniList;
        break;

      default:
        return Future.error(response.statusCode);
    }
  }
}
