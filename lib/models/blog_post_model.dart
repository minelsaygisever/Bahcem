class BlogPostModel {
  String comment;
  String createdAt;
  String imgUrl;
  String kullaniciAdi;
  int likeCount;
  String profileImg;
  String userId;

  BlogPostModel(
      {this.comment,
        this.createdAt,
        this.imgUrl,
        this.kullaniciAdi,
        this.likeCount,
        this.profileImg,
        this.userId});

  BlogPostModel.fromJson(Map<String, dynamic> json) {
    comment = json['comment'];
    createdAt = json['created_at'];
    imgUrl = json['img_url'];
    kullaniciAdi = json['kullaniciAdi'];
    likeCount = json['like_count'];
    profileImg = json['profileImg'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['comment'] = this.comment;
    data['created_at'] = this.createdAt;
    data['img_url'] = this.imgUrl;
    data['kullaniciAdi'] = this.kullaniciAdi;
    data['like_count'] = this.likeCount;
    data['profileImg'] = this.profileImg;
    data['user_id'] = this.userId;
    return data;
  }
}
