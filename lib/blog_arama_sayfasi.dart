import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class BlogSearchPage extends StatefulWidget {
  @override
  _BlogSearchPageState createState() => _BlogSearchPageState();
}

class _BlogSearchPageState extends State<BlogSearchPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final _search = TextEditingController();
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.blockWidth * 2, 0, SizeConfig.blockWidth * 2, 0.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0.0),
              child: Column(
                children: <Widget>[
                  Theme(
                      data: new ThemeData(
                        primaryColor: SizeConfig.green,
                        primaryColorDark: SizeConfig.green,
                      ),
                      child: Container(
                        height: SizeConfig.blockWidth * 16,
                        child: new TextField(
                          cursorColor: SizeConfig.green,
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
                            filled: true,
                            fillColor: SizeConfig.almostWhite,
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: SizeConfig.almostWhite)),
                            hintText: 'Arama',
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ],

        ),
      ),
    );
  }
}
