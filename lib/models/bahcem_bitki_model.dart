class BahcemBitkiModel {
  String albumUrl;
  String bitkininAdi;
  String hatirlatici;
  String isiIhtiyaci;
  String isikIhtiyaci;
  String notlar;
  String profilImgUrl;
  String sulama;
  String toprakDegisim;
  String toprakTipi;

  BahcemBitkiModel(
      {this.albumUrl,
        this.bitkininAdi,
        this.hatirlatici,
        this.isiIhtiyaci,
        this.isikIhtiyaci,
        this.notlar,
        this.profilImgUrl,
        this.sulama,
        this.toprakDegisim,
        this.toprakTipi});

  BahcemBitkiModel.fromJson(Map<String, dynamic> json) {
    albumUrl = json['album_url'];
    bitkininAdi = json['bitkinin_adi'];
    hatirlatici = json['hatirlatici'];
    isiIhtiyaci = json['isi_ihtiyaci'];
    isikIhtiyaci = json['isik_ihtiyaci'];
    notlar = json['notlar'];
    profilImgUrl = json['profil_img_url'];
    sulama = json['sulama'];
    toprakDegisim = json['toprak_degisim'];
    toprakTipi = json['toprak_tipi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['album_url'] = this.albumUrl;
    data['bitkinin_adi'] = this.bitkininAdi;
    data['hatirlatici'] = this.hatirlatici;
    data['isi_ihtiyaci'] = this.isiIhtiyaci;
    data['isik_ihtiyaci'] = this.isikIhtiyaci;
    data['notlar'] = this.notlar;
    data['profil_img_url'] = this.profilImgUrl;
    data['sulama'] = this.sulama;
    data['toprak_degisim'] = this.toprakDegisim;
    data['toprak_tipi'] = this.toprakTipi;
    return data;
  }
}
