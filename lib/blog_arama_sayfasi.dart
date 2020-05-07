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
      backgroundColor: Colors.grey[300],
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
                        primaryColor: Colors.green[900],
                        primaryColorDark: Colors.green[900],
                      ),
                      child: Container(
                        height: SizeConfig.blockWidth * 16,
                        child: new TextField(
                          cursorColor: Colors.green[900],
                          decoration: new InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 2, 0, 0),
                            filled: true,
                            fillColor: Colors.grey[50],
                            border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.grey[50])),
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
