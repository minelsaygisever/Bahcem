class UserModel {
  List<Arkadaslar> arkadaslar;
  String bio;
  String blogIsim;
  String email;
  String kullaniciAdi;
  String profilImg;
  String userId;

  UserModel(
      {this.arkadaslar,
        this.bio,
        this.blogIsim,
        this.email,
        this.kullaniciAdi,
        this.profilImg,
        this.userId});

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json['arkadaslar'] != null) {
      arkadaslar = new List<Arkadaslar>();
      json['arkadaslar'].forEach((v) {
        arkadaslar.add(new Arkadaslar.fromJson(v));
      });
    }
    bio = json['bio'];
    blogIsim = json['blog_isim'];
    email = json['email'];
    kullaniciAdi = json['kullanici_adi'];
    profilImg = json['profil_img'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.arkadaslar != null) {
      data['arkadaslar'] = this.arkadaslar.map((v) => v.toJson()).toList();
    }
    data['bio'] = this.bio;
    data['blog_isim'] = this.blogIsim;
    data['email'] = this.email;
    data['kullanici_adi'] = this.kullaniciAdi;
    data['profil_img'] = this.profilImg;
    data['user_id'] = this.userId;
    return data;
  }
}

class Arkadaslar {
  String userId;

  Arkadaslar({this.userId});

  Arkadaslar.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    return data;
  }
}

class AuthModel {

  final String uid;

  AuthModel({ this.uid });

}