import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:bahcem_deneme/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";
  static int userLength;
  static FirebaseUser user;


  sendUser(List<Arkadaslar> arkadaslar, String bio, String blogIsim,
      String email, String kullaniciAdi, String profilImg) async {
    user = await FirebaseAuth.instance.currentUser();

    FirebaseDatabase.instance.reference().child('Kullanicilar').child(userLength.toString()).update({
      'arkadaslar': arkadaslar,
      'bio': bio,
      'blog_isim': blogIsim,
      'email': email,
      'kullanici_adi': kullaniciAdi,
      'profil_img': profilImg,
      'user_id': user.uid,
    });
  }


  editUser(String bio, String blogIsim, String profilImg, int index) async {
    DatabaseReference ref = FirebaseDatabase.instance.reference().child('Kullanicilar').child(index.toString());
    ref.update({
      'bio': bio,
      'blog_isim': blogIsim,
      'profil_img': profilImg,
    });
  }

  Future<List<UserModel>> getUser() async {
    final response = await http.get("$FIREBASE_URL/Kullanicilar.json");
    user = await FirebaseAuth.instance.currentUser();
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json.decode(response.body);
        final UserList = jsonModel
            .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
            .toList()
            .cast<UserModel>();
        return UserList;
        break;

      default:
        return Future.error(response.statusCode);
    }
  }
  Future<List<UserModel>> getCurrentUser(String kullaniciAdi) async {
    final response = await http.get("$FIREBASE_URL/Kullanicilar.json");
    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json.decode(response.body);
        final UserList = jsonModel
            .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
            .toList()
            .cast<UserModel>();
        List<UserModel> resultList = [];
        for (int i = 0; i < UserList.length; i++) {
          if (kullaniciAdi != "" && UserList[i].kullaniciAdi.contains(kullaniciAdi)) {
            resultList.add(UserList[i]);
          }
          /*
      if (list[i].kullaniciAdi == kullaniciAdi) {
        resultList.add(list[i]);
      }*/
        }
        return resultList;
        break;

      default:
        return Future.error(response.statusCode);
    }
  }
}
