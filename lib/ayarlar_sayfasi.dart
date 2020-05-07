import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';
import 'custom_switch.dart';
import 'hakkinda_sayfasi.dart';

class AyarlarSayfasi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AyarlarSayfasiState();
}

class AyarlarSayfasiState extends State<AyarlarSayfasi>{
  bool isSwitched = true;
  String heightInFeet = "null";
  int height = 180;
  String dropdownValue = 'Green Mornings';
  List<String> _locations = ['Green Mornings', 'Happy Day']; // Option 2
  String _selectedLocation; // Option 2
  var sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Ayarlar',
          style: SizeConfig.yaziAppbarBaslik,
        ),
        backgroundColor: Colors.grey[50],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.green[900], //change your color here
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
            child: Text(
              "Bildirimler",
              textAlign: TextAlign.left,
              style: SizeConfig.yaziAciklamaBaslik,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
            child: CustomSwitch(
              activeColor: Colors.green[900],
              value: isSwitched,
              onChanged: (value) {
                print("VALUE : $value");
                setState(() {
                  isSwitched = value;
                });
              },
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 6, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
            child: Text(
              "Alarm Sesi",
              textAlign: TextAlign.left,
              style: SizeConfig.yaziAciklamaBaslik,
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
            child: DropdownButton(
              value: dropdownValue,
              onChanged: (newValue) {
                setState(() {
                  dropdownValue = newValue;
                });
              },
              items: _locations.map((location) {
                return DropdownMenuItem(
                  child: Text(
                    location,
                    style: SizeConfig.yaziWidgetIci,
                  ),
                  value: location,
                );
              }).toList(),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 6, SizeConfig.blockWidth * 4, 0),
            child: Text(
              "Alarm Yüksekliği",
              textAlign: TextAlign.left,
              style: SizeConfig.yaziAciklamaBaslik,
            ),
          ),
          Container(
            child: Slider(
              min: 0.0,
              max: 10.0,
              divisions: 5,
              value: sliderValue,
              activeColor: Colors.green[900],
              inactiveColor: Colors.grey,
              onChanged: (newValue) {
                setState(() {
                  sliderValue = newValue;
                });
              },
            ),
          ),
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
              child: FlatButton(
                padding: EdgeInsets.all(0.0),
                onPressed: () =>  Navigator.push(context, MaterialPageRoute(builder: (context) => HakkindaSayfasi()),),
                child: Text(
                  "Hakkında",
                  textAlign: TextAlign.left,
                  style: SizeConfig.yaziAciklamaBaslik,
                ),
              )),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 4, SizeConfig.blockWidth * 2),
            child: FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () {
                /*...*/
              },
              child: Text(
                "Çıkış Yap",
                textAlign: TextAlign.left,
                style: SizeConfig.yaziAciklamaBaslik,
              ),
            ),
          ),
        ],
      ),
    );
  }
}