import 'dart:convert';
import 'dart:io';
import 'package:bahcem_deneme/models/bahcem_bitki_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:http/http.dart' as http;

class BahcemService {
  static const String FIREBASE_URL = "https://bahcem-109e7.firebaseio.com/";
  static FirebaseUser user;
  static int plantLength = 0;

  sendPlant(
      String albumUrl,
      String bitkininAdi,
      String createdAt,
      String hatirlatici,
      String isiIhtiyaci,
      String isikIhtiyaci,
      String notlar,
      String profilImgUrl,
      String sulama,
      String toprakDegisim,
      String toprakTipi) async {
    FirebaseUser user = await FirebaseAuth.instance.currentUser();
    FirebaseDatabase.instance
        .reference()
        .child('BahcemBitki')
        .child(plantLength.toString())
        .update({
      'album_url': albumUrl,
      'bitkinin_adi': bitkininAdi,
      'created_at': createdAt,
      'hatirlatici': hatirlatici,
      'isi_ihtiyaci': isiIhtiyaci,
      'isik_ihtiyaci': isikIhtiyaci,
      'notlar': notlar,
      'profil_img_url': profilImgUrl,
      'sulama': sulama,
      'toprak_degisim': toprakDegisim,
      'toprak_tipi': toprakTipi,
      'user_id': user.uid,
      'bitki_id': plantLength.toString(),
    });
  }

  Future<List<BahcemBitkiModel>> getBahcemAnasayfa() async {
    final response = await http.get("$FIREBASE_URL/BahcemBitki.json");
    user = await FirebaseAuth.instance.currentUser();

    switch (response.statusCode) {
      case HttpStatus.ok:
        final jsonModel = json.decode(response.body);
        final bahcemBitkiList = jsonModel
            .map((e) => BahcemBitkiModel.fromJson(e as Map<String, dynamic>))
            .toList()
            .cast<BahcemBitkiModel>();
        return bahcemBitkiList;
        break;

      default:
        return Future.error(response.statusCode);
    }
  }

  updatePlant(String albumUrl,
      String bitkininAdi,
      String hatirlatici,
      String isiIhtiyaci,
      String isikIhtiyaci,
      String notlar,
      String profilImgUrl,
      String sulama,
      String toprakDegisim,
      String toprakTipi, String bitkiId) async {
    DatabaseReference ref = FirebaseDatabase.instance
        .reference()
        .child('BahcemBitki')
        .child(bitkiId.toString());
    ref.update({
      'album_url': albumUrl,
      'bitkinin_adi': bitkininAdi,
      'hatirlatici': hatirlatici,
      'isi_ihtiyaci': isiIhtiyaci,
      'isik_ihtiyaci': isikIhtiyaci,
      'notlar': notlar,
      'profil_img_url': profilImgUrl,
      'sulama': sulama,
      'toprak_degisim': toprakDegisim,
      'toprak_tipi': toprakTipi,
      'user_id': user.uid,
    });
  }
}
