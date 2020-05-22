import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class getDownUrl extends StatefulWidget {
  @override
  _getDownUrlState createState() => _getDownUrlState();
}

class _getDownUrlState extends State<getDownUrl> {
  File image;
  String filename;

  Future<String> uploadImage() async{
    StorageReference ref = FirebaseStorage.instance.ref().child("images/orkide.jpg");
    StorageUploadTask uploadTask = ref.putFile(image);
    var downUrl = await(await uploadTask.onComplete).ref.getDownloadURL();
    var url = downUrl.toString();
    print(url);
    return url;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('deneme'),
        ),
        body: Center(
          child: Container(
              child: RaisedButton(
                child: Text("Get Download URL"),
                onPressed: (){
                  uploadImage();
                },
              ))
        ));
  }
}

