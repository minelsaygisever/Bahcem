//jsondan darta gelen dönüşen kısım
//servisten gelen veriler burada eşleşiyor
class BitkiniTani {
  String aciklama;
  String isiIhtiyaci;
  String isikIhtiyaci;
  String notlar;
  String sulama;
  String toprakDegisim;
  String toprakTipi;
  String bitkiAdi;

  BitkiniTani(
      {this.aciklama,
        this.isiIhtiyaci,
        this.isikIhtiyaci,
        this.notlar,
        this.sulama,
        this.toprakDegisim,
        this.toprakTipi,
        this.bitkiAdi});

  BitkiniTani.fromJson(Map<String, dynamic> json) {
    aciklama = json['Aciklama'];
    isiIhtiyaci = json['IsiIhtiyaci'];
    isikIhtiyaci = json['IsikIhtiyaci'];
    notlar = json['Notlar'];
    sulama = json['Sulama'];
    toprakDegisim = json['ToprakDegisim'];
    toprakTipi = json['ToprakTipi'];
    bitkiAdi = json['bitkiAdi'];
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
    return data;
  }
}
