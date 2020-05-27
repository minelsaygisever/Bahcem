import 'dart:convert';
import 'dart:io';
import 'package:bahcem_deneme/models/bitkini_tani_model.dart';
import 'package:http/http.dart' as http;

class BitkiniTaniService {
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";

  //bitkini tani tablosu get fonksiyonu, tablodan verileri almak için
  Future<List<BitkiniTaniModel>> getBitkiniTani() async {
    final response = await http.get("$FIREBASE_URL/BitkiniTani.json");

    //response geldi, onu kontrol ediyoruz
    switch (response.statusCode) {
    //response işlemi başarılıysa
      case HttpStatus.ok:
        final jsonModel = json
            .decode(response.body); //response dan gelen bilgileri parçalıyor
        final bitkiniTaniList = jsonModel
            .map((e) => BitkiniTaniModel.fromJson(e as Map<String, dynamic>))
            .toList().cast<BitkiniTaniModel>(); 
        //jsonModele gelen bilgileri liste cast ediyoruz
        return bitkiniTaniList;
        break;

    //reponse işlemi başarısızsa hata kodu dön
      default:
        return Future.error(response.statusCode);
    }
  }
}
