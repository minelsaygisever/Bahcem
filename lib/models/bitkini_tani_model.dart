//jsondan darta gelen dönüşen kısım
//servisten gelen veriler burada eşleşiyor
class BitkiniTaniModel {
  String aciklama;
  String isiIhtiyaci;
  String isikIhtiyaci;
  String notlar;
  String sulama;
  String toprakDegisim;
  String toprakTipi;
  String bitkiAdi;
  String url;

  BitkiniTaniModel(
      {this.aciklama,
        this.isiIhtiyaci,
        this.isikIhtiyaci,
        this.notlar,
        this.sulama,
        this.toprakDegisim,
        this.toprakTipi,
        this.bitkiAdi,
        this.url});

  BitkiniTaniModel.fromJson(Map<String, dynamic> json) {
    aciklama = json['Aciklama'];
    isiIhtiyaci = json['IsiIhtiyaci'];
    isikIhtiyaci = json['IsikIhtiyaci'];
    notlar = json['Notlar'];
    sulama = json['Sulama'];
    toprakDegisim = json['ToprakDegisim'];
    toprakTipi = json['ToprakTipi'];
    bitkiAdi = json['bitkiAdi'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Aciklama'] = this.aciklama;
    data['IsiIhtiyaci'] = this.isiIhtiyaci;
    data['IsikIhtiyaci'] = this.isikIhtiyaci;
    data['Notlar'] = this.notlar;
    data['Sulama'] = this.sulama;
    data['ToprakDegisim'] = this.toprakDegisim;
    data['ToprakTipi'] = this.toprakTipi;
    data['bitkiAdi'] = this.bitkiAdi;
    data['url'] = this.url;
    return data;
  }
}
