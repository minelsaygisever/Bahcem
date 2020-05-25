//jsondan darta gelen dönüşen kısım
//servisten gelen veriler burada eşleşiyor
class BlogPostModel {
  String comment;
  String created_at;
  String img_url;
  int like_count;
  String user_id;

  BlogPostModel(
      {this.comment,
      this.created_at,
      this.img_url,
      this.like_count,
      this.user_id});

  BlogPostModel.fromJson(Map<String, dynamic> json) {
    comment = json['comment'];
    created_at = json['created_at'];
    img_url = json['img_url'];
    like_count = json['like_count'];
    user_id = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comment'] = this.comment;
    data['created_at'] = this.created_at;
    data['img_url'] = this.img_url;
    data['like_count'] = this.like_count;
    data['user_id'] = this.user_id;
    return data;
  }
}
