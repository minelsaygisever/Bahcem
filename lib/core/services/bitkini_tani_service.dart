import 'dart:convert';
import 'dart:io';
import 'package:bahcem_deneme/core/model/bitkini_tani.dart';
import 'package:http/http.dart' as http;

class BitkiniTaniService {
  //bitkini tani tablosunun database linki
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";

  //tablodan verileri almak için
  Future<List<BitkiniTani>> getBitkiniTani() async {
    final response = await http.get("$FIREBASE_URL/BitkiniTani.json");

    //response geldi, onu kontrol ediyoruz
    switch (response.statusCode) {
    //response işlemi başarılıysa
      case HttpStatus.ok:
        final jsonModel = json
            .decode(response.body); //response dan gelen bilgileri parçalıyor
        final bitkiniTaniList = jsonModel
            .map((e) => BitkiniTani.fromJson(e as Map<String, dynamic>))
            .toList().cast<BitkiniTani>(); //jsonModele gelen bilgileri liste cast ediyoruz
        return bitkiniTaniList;
        break;

    //reponse işlemi başarısızsa hata kodu dön
      default:
        return Future.error(response.statusCode);
    }
  }
}
