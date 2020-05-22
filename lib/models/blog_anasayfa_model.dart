//jsondan darta gelen dönüşen kısım
//servisten gelen veriler burada eşleşiyor
class BlogAnasayfaModel {
  String comment;
  String createdAt;
  String imgUrl;
  int likeCount;
  String userId;

  BlogAnasayfaModel(
      {this.comment, this.createdAt, this.imgUrl, this.likeCount, this.userId});

  BlogAnasayfaModel.fromJson(Map<String, dynamic> json) {
    comment = json['comment'];
    createdAt = json['created_at'];
    imgUrl = json['img_url'];
    likeCount = json['like_count'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    data['img_url'] = this.imgUrl;
    data['like_count'] = this.likeCount;
    data['user_id'] = this.userId;
    return data;
  }
}