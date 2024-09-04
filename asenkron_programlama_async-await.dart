// async- await yapısa hem kodda okunurluk hem daha az kodla aynı işi yapmamızı sağlar 

void main(List<String> args) async{
  print("İnternetten kişi verisi getirilecek");
  //String kisi = await kisiVerisiGetir();
   //print(kisi.length); // bu yapıyı direkt çalıştırırsak senkron yani işlemin bitmesisni bekler ve sonra diğer işlemleri yapar. Bunu engellemek için bu yapıyı bir fonksiyon içine alır ve mainde foksiyonu çağırırız. Böylece sorun çözülmüş olur.
  kisiIleIlgiliIslemler();
  print("Başka işler yapılcak");
  print("işlem bitti");

}

void kisiIleIlgiliIslemler()async{
String kisi = await kisiVerisiGetir();
   print(kisi.length);
}

Future<String> kisiVerisiGetir() {
  return Future<String>.delayed(Duration(seconds: 3),(){
return "Kişi adı: Sudenaz ve ide: 100";
  });
}

// bir future ı bir değişkene atadığımızda karşılığının yani sonucnun işlemden sonra geleceğini belirtmek için await yani beklemek komutunu kullanırız. await kullanduğımız fonnskiuyonlerın başına da async yazmamız gerekir