//soru : 1

/*
void main(List<String> args) {
  idyeGoreKullaniciGetir(5).then((Map value) {
    print(value);
    print(
        value); // value getirildikten sonra diğer fonksiyon çalışmalı bu nedenle bir sonraki çalışacak olan fonksiyonu bu fonksiyonun içine yazdık.
    kullaniciAdinaGoreKurslariGeti(value['Kullanıcı adı'])
        .then((List kurslaListesi) {
          print(kurslaListesi);
      String ilkKurs = kurslaListesi[0];

      kursunIlkYorumunugetir(ilkKurs).then((String yorum) {
        print(yorum);
      });
    });
  });
}

// kursun ilk yorumunu getirir
Future<String> kursunIlkYorumunugetir(String KursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs çok güzel";
  });
}

//  kullanıcı adına göre o kişinin kurslarını getiren fonksiyon
Future<List> kullaniciAdinaGoreKurslariGeti(String kullaniciAdi) {
  print("$kullaniciAdi isimli kullanıcının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'swift'];
  });
}

// verilen id ye göre kullanıcı adını 2 sn de getiren fonksiyon
Future<Map> idyeGoreKullaniciGetir(int id) async {
  print("$id idli kullanıcı getiriliyor.");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'Kullanıcı adı': 'Sudenaz Klaycık', "id": id};
  });
}
*/
// map ın key tipi str iken valuesu str de olabilir int de olabilir.


//bunu bir de await ile yazalım

//soru : 1

main(List<String> args) async {
Map<String,dynamic> gelenKullanici = await idyeGoreKullaniciGetir(6);

List<String> kurslarListesi = await kullaniciAdinaGoreKurslariGeti(gelenKullanici["Kullanıcı adı"]);
print(kurslarListesi);
String ilkYorum = await kursunIlkYorumunugetir(kurslarListesi[0]);
print(ilkYorum);
}


// kursun ilk yorumunu getirir
Future<String> kursunIlkYorumunugetir(String KursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "Kurs çok güzel";
  });
}

//  kullanıcı adına göre o kişinin kurslarını getiren fonksiyon
Future<List<String>> kullaniciAdinaGoreKurslariGeti(String kullaniciAdi) {
  print("$kullaniciAdi isimli kullanıcının kursları getiriliyor.");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'swift'];
  });
}
 
// verilen id ye göre kullanıcı adını 2 sn de getiren fonksiyon
Future<Map<String,dynamic>> idyeGoreKullaniciGetir(int id) async {
  print("$id idli kullanıcı getiriliyor.");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'Kullanıcı adı': 'Sudenaz Klaycık', "id": id};
  });
}