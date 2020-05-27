import 'dart:io';
import 'dart:ui';
import 'package:bahcem_deneme/SizeConfig.dart';
import 'package:bahcem_deneme/services/blog_service.dart';
import 'package:bahcem_deneme/view/main.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BlogGonderiEkle extends StatefulWidget {
  @override
  _BlogGonderiEkleState createState() => _BlogGonderiEkleState();
}

class _BlogGonderiEkleState extends State<BlogGonderiEkle> {
  BlogService service;
  File _selectedImage;
  final _commentController = TextEditingController();
  String comment = "";
  var imgUrl;
  bool _absorbing = false;

  @override
  void initState() {
    super.initState();
    service = BlogService();
  }

  Future selectImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    //var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      _selectedImage = image;
    });
  }

  Future uploadImage() async {
    StorageReference ref = FirebaseStorage.instance
        .ref()
        .child("0H9SC3y9PAQsFx9HwSBTjv0kIA72")
        .child("Blog")
        .child("img" + BlogService.postLength.toString() + ".jpg");
    StorageUploadTask uploadTask = ref.putFile(_selectedImage);
    imgUrl = await (await uploadTask.onComplete).ref.getDownloadURL();
  }

  Widget showDefaultImg() {
    return Image(
      image: AssetImage('assets/icons/postdef.png'),
      fit: BoxFit.cover,
    );
  }

  Widget showNewImg() {
    return Expanded(child: Image.file(_selectedImage));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: SizeConfig.backgroundColor,
      body: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.blockWidth * 4, 0, SizeConfig.blockWidth * 4, 0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, SizeConfig.blockWidth * 4, 0, 0.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () => selectImage(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height:
                          SizeConfig.screenWidth - (SizeConfig.blockWidth * 8),
                      width:
                          SizeConfig.screenWidth - (SizeConfig.blockWidth * 8),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: SizeConfig.almostWhite,
                          width: 0,
                        ),
                        color: SizeConfig.almostWhite,
                      ),
                      child: _selectedImage == null
                          ? showDefaultImg()
                          : showNewImg(),
                    )
                  ],
                ),
              ),
              TextFormField(
                controller: _commentController,
                onChanged: (val) {
                  setState(() => comment = val);
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                cursorColor: SizeConfig.green,
                decoration: InputDecoration(
                  hintText: 'Düşüncelerin...',
                  hintStyle: SizeConfig.yaziHint,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: SizeConfig.green,
                    ),
                  ),
                ),
                style: SizeConfig.yaziAciklama,
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockWidth * 4,
                    bottom: SizeConfig.blockWidth * 2),
                child: _selectedImage == null
                    ? Text("")
                    : Container(
                        alignment: Alignment.center,
                        height: SizeConfig.blockWidth * 8,
                        width: SizeConfig.blockWidth * 26,
                        child: AbsorbPointer(
                          absorbing: _absorbing,
                          child: FlatButton(
                              onPressed: () async {
                                setState(() {
                                  _absorbing = true;
                                });

                                //await Future.delayed(Duration(seconds: 5));

                                await uploadImage();
                                await service.sendPost(
                                    comment,
                                    DateTime.now().toString(),
                                    imgUrl.toString(),
                                    0);
                                _commentController.clear();
                                setState(() {
                                  _selectedImage = null;
                                });
                                setState(() {
                                  _absorbing = false;
                                });
                                setState(() {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (BuildContext context) => MyHomePage()));
                                });

                              },
                              child: Container(
                                child: Text(
                                  "Paylaş",
                                  style: SizeConfig.yaziButon,
                                ),
                              ),
                              color: SizeConfig.green,
                              shape: StadiumBorder()),
                        ),
                      ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.blockWidth * 4,
                    bottom: SizeConfig.blockWidth * 2),
                child: _selectedImage == null
                    ? Text("")
                    : Container(
                        alignment: Alignment.bottomRight,
                        height: SizeConfig.blockWidth * 10,
                        width: SizeConfig.blockWidth * 30,
                        child: IconButton(
                          iconSize: SizeConfig.blockWidth * 8,
                          icon: Icon(Icons.delete),
                          color: Colors.black45,
                          onPressed: () {
                            _commentController.clear();
                            setState(() {
                              _selectedImage = null;
                            });
                          },
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
