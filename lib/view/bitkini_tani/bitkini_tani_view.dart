import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/models/bitkini_tani_model.dart';
import 'package:bahcem_deneme/services/firebase_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'bitkini_tani_bitki_goruntule_view.dart';

class BitkiniTaniView extends StatefulWidget {
  @override
  _BitkiniTaniViewState createState() => _BitkiniTaniViewState();
}

class _BitkiniTaniViewState extends State<BitkiniTaniView> {
  //servisi bağlayıp veri kullanmak için state tanımlıyoruz
  //initstate olması lazım çünkü başlangıçta ilk gelecek veriyi çekiyoruz
  //güncelleme yapmak isteseydik setstate kullanırdık
  FirebaseService service;

  @override
  void initState() {
    super.initState();
    service = FirebaseService();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      //futureBuilder sayfanın loading aşamalarını kontrol ediyor. Bunun için kullandık
      body: FutureBuilder(
        future: service.getBitkiniTani(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            //connection done ile kontrol ediliyor. active, waiting vs durumlarda bu şekilde kontrol edilebilir
            case ConnectionState.done:
              //datası var mı
              if (snapshot.hasData)
                return _listBitkiniTani(snapshot.data);
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
    );
  }

  //uygulamamızın body si burada olacak
  Widget _listBitkiniTani(List<BitkiniTaniModel> list) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.blockWidth * 4),
      child: GridView.builder(
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: SizeConfig.blockWidth * 4,
              mainAxisSpacing: SizeConfig.blockWidth * 4,
              crossAxisCount: 2),
          itemBuilder: (context, index) => _card(list[index])),
    );
  }

  Widget _card(BitkiniTaniModel bitkiniTani) {
    return Center(
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BitkiniTaniBitkiGoruntule()),
        ),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/orkide.jpg"),
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
              child: new Text(
                bitkiniTani.bitkiAdi,
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
