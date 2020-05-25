import 'dart:convert';
import 'dart:io';
import 'package:bahcem_deneme/models/bahcem_bitki_model.dart';
import 'package:http/http.dart' as http;

class BahcemService {
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";

  Future<List<BahcemBitkiModel>> getBahcemAnasayfa() async {
    final response = await http.get("$FIREBASE_URL/BahcemBitki2.json");

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json
            .decode(response.body);
        final bahcemBitkiList = jsonModel
            .map((e) => BahcemBitkiModel.fromJson(e as Map<String, dynamic>))
            .toList().cast<BahcemBitkiModel>();
        return bahcemBitkiList;
        break;

      default:
        return Future.error(response.statusCode);
    }
  }
}
