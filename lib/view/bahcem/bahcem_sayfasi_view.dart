import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/bahcem_bitki_model.dart';
import 'package:bahcem_deneme/services/bahcem_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bahcem_bitki_ekle_view.dart';
import 'bahcem_bitki_goruntule_view.dart';

class BahcemSayfasi extends StatefulWidget {
  @override
  _BahcemSayfasiState createState() => _BahcemSayfasiState();
}

//constructor da {} eklemeyi unutma
class BahcemDetailPlant {
  String albumUrl;
  String bitkininAdi;
  String createdAt;
  String hatirlatici;
  String isiIhtiyaci;
  String isikIhtiyaci;
  String notlar;
  String profilImgUrl;
  String sulama;
  String toprakDegisim;
  String toprakTipi;
  String userId;

  BahcemDetailPlant(
      {this.albumUrl,
      this.bitkininAdi,
      this.createdAt,
      this.hatirlatici,
      this.isiIhtiyaci,
      this.isikIhtiyaci,
      this.notlar,
      this.profilImgUrl,
      this.sulama,
      this.toprakDegisim,
      this.toprakTipi,
      this.userId});
}

class _BahcemSayfasiState extends State<BahcemSayfasi> {
  BahcemBitkiModel bahcemBitki;
  BahcemService _bahcemService;

  @override
  void initState() {
    super.initState();
    _bahcemService = BahcemService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Stack(children: <Widget>[
        FutureBuilder(
          future: _bahcemService.getBahcemAnasayfa(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                if (snapshot.hasData)
                  return _listBahcemAnasayfa(snapshot.data);
                else
                  //servis geldi ama data yoksa
                  return _notFoundWidget;
                break;
              //servisten dönemediyse, hata varsa
              default:
                return _waitingWidget;
            }
          },
        ),
        Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BahcemBitkiEkle()),
            ),
            child: Container(
              height: SizeConfig.blockWidth * 12,
              width: SizeConfig.screenWidth,
              alignment: Alignment.center,
              child: Text(
                "Bitki Ekle",
                style: SizeConfig.yaziBitkiniEkleButon,
              ),
              decoration: BoxDecoration(
                color: SizeConfig.almostWhite,
              ),
            ),
          ),
        ]),
      ]),
    );
  }

//uygulamamızın body si burada olacak
  Widget _listBahcemAnasayfa(List<BahcemBitkiModel> list) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
      //çiçeklerin hr birini grid içine çekmek için _item widgetini çağıracağız
      child: GridView.builder(
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: SizeConfig.blockWidth * 4,
              mainAxisSpacing: SizeConfig.blockWidth * 4,
              crossAxisCount: 3),
          itemBuilder: (context, index) => _card(list[index])),
    );
  }

  Widget _card(bahcemBitki) {
    return Center(
      child: GestureDetector(
        onTap: () {
          final bahcemDetailPlant = BahcemDetailPlant(
            albumUrl: bahcemBitki.albumUrl,
            bitkininAdi: bahcemBitki.bitkininAdi,
            createdAt: bahcemBitki.createdAt,
            hatirlatici: bahcemBitki.hatirlatici,
            isiIhtiyaci: bahcemBitki.isiIhtiyaci,
            isikIhtiyaci: bahcemBitki.isikIhtiyaci,
            notlar: bahcemBitki.notlar,
            profilImgUrl: bahcemBitki.profilImgUrl,
            sulama: bahcemBitki.sulama,
            toprakDegisim: bahcemBitki.toprakDegisim,
            toprakTipi: bahcemBitki.toprakTipi,
            userId: bahcemBitki.userId
          );

          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    BahcemBitkiGoruntule(bahcemDetailPlant: bahcemDetailPlant)),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(bahcemBitki.profilImgUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(SizeConfig.blockWidth * 2),
          ),
          alignment: Alignment.bottomCenter,
          child: Transform(
            alignment: Alignment.bottomCenter,
            transform: Matrix4.skewY(0.0)..rotateZ(0.0),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(SizeConfig.blockWidth * 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(SizeConfig.blockWidth * 2),
                  bottomRight: Radius.circular(SizeConfig.blockWidth * 2),
                ),
                color: Color(0xCDFFFFFF),
              ),
              child: Text(
                bahcemBitki.bitkininAdi,
                textAlign: TextAlign.center,
                style: SizeConfig.yaziAciklamaBaslik,
              ),
            ),
          ),
        ),
      ),
    );
  }

  //servisten data dönmediyse bu gelecek
  Widget get _notFoundWidget => Center(
        child: Text("Not Found"),
      );

  //bir hata meydana geldiyse servis cevap vermediyse bu dönecek
  Widget get _waitingWidget => Center(child: CircularProgressIndicator());
}
