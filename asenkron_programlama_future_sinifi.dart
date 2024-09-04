//import 'dart:io'; sleep için kullandık bu kütüphaneyi


void main(List<String> args) {
  print("Anne cocuğu ekmek almaya gönderdi");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value)).catchError((hata){print(hata);}).whenComplete(() => print("ekmek alma operasyonu bitti.")); //burası başarılı bir şekilde tamamlandığında çalışıyor il kısım eğer hata varsa cstch kımsı çalışacak. when kısmı ise işlem başarılı ya da başarısız geçsin çalışacaktır



  //print(sonuc); // fakat burada çıktıda sonucu göremedik biz e  Instance of 'Future<String>' böyle bir ifade çıkardı. Çünkü sistem bizim futurdan alacağımız cevabı beklemedi. Bunu  da düzeltmek için then kullanırız.
  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır!!");
}



// bu fonksiyon yazdırma yapmasın bana değer  döndürsün istiyorum bu nedenle return kullanıyorum. Fakat artın bu fonksiyon bir değer döndürdüğü için void olamaz. Bana döndürdüğü değeri yani string değerini de giremem şünkü bu olası string değerine sahip. çalışıp sonucu gelmedği sürece string değerine sahip değil. Bu nedenle bu fonksiyonun tipi Future <String> olmalı


// bunu da yaptıktan sonra hala sistem bizE kızmaya devam ediyor.Return ifadesini göremediğini söylüyor. Oysaki fonksiyonumuzda return var. Bu sorunun nedeni returnu işlem başlayıp bittikten sonra görecek olması. Yani Future.delayed(Duration(seconds: 2),() kısmı okunuyor ve buradaki bekleme süreinden kaynaklı return ü göremiyor. BU nedenle hata veriyor. Bunu düzeltmek için ise bir Future.delayed(Duration(seconds: 2),()'e de return verebiliriz ya da Futur nesnesini bir değişkene atayabilir ardından da bunu return edebiliriz bu sayede hatadan kurtulmuş oluruz.

Future <String> uzunSurenIslem() {
  print("Çocuk ekmek almak için evden çıktı.");
  Future<String> sonuc = Future.delayed(Duration(seconds: 2),(){
    //return "Çocuk ekmekle eve girer"; // işlemin başarılı gerçekleşmesi durumunda olur
//print("Çocuk ekmekle eve girer");
throw Exception("Bakkalda ekmek kalmamış"); // bu işlemin hatalı gerçekleşmesi durumunda olur
  }); 

  return sonuc;
  //sleep(Duration(seconds: 10)); // bu progarmın 10 sn beklemesini sağlar
  //print("Çocuk ekmek ile eve geri döner");
}

// Future yapıları zaman alan işlemlerde sistemin devam etmesini sağlar. Örneğin islem sırasında bir database den veri alma işlemi var. Ve bu işlem diyelim ki 14 sn sürecek. senkron programlamaya göre 14 sanıye boyunca sistem kitlenmeli ve işlem db den veri alınana kadar bir sonraki koda geçilmemeli. Ama asenkron programlamada işlemin bitmesi beklenmez aynı sürede diğer işlemeler de yapılır. Futur yapısı biim kendimiz için oluşturmamız gereken yapılar değiller. Zaten paketlerde var olan şeyler


/*
// kısaca olması gereken yapı şu şekilde
// main(){
  print("Anne çocuğu ekmek almaya yollar.");
  print("Çocuk kelmek almak için evden çıkar");
  uzunSurenIslem()
  .then((value) => print(value))
  .catchError((hata) => print(hata))
  .whenComplete(() => print("Ekmek alma operasyonu bitti"));

  print("Peynir zeytin hazırlanıyor");
  print("Kahvaltı hazır!!");
}

Future<String> uzunSurenIslem(){
  return Future<String>.delayed( Duration(seconds: 2), () {
    return "Çocuk ekmekle eve girer";
  });
}
*/