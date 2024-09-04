/* 
Değişken oluşturalım.
 Yapımız -> değişkenIsmi + degiskenIsmi = deger

*/

void main(){

  String isim = "Sudenaz ";
  String soyIsim = "Kalaycık";
  var deneme = "değişken oluşturuyoruz."; // illa tip vermek zorunda değili var da verebiliriz. 


  print(deneme);
  print(isim + soyIsim);
  print("Sudenaz Kalaycık");
  print("merhaba ben $isim"); // değişkeni metin içinde çağırmak için $ işareti kullanırız
  print("İsmim olan $isim'ın kelime sayısı:" + isim.length.toString());
  // tipleri farklı yapıları birleştirmek istediğimizde birini diğerinin türüne çevirmemiz 
  // gerekir. Bunu da .toString ile yaparız.

  print("Benim soy adımın kelime sayısı $soyIsim.length");
  // burada da olduğu gibi değişkenle birlikte metot (method) veya özellik (property) ler
  // kullanıyorsak bunu gruplandırmamız gerekecek. Aksi takdirde $ sadece ilk yapıya etki eder.
  print("Benim soy adımın kelime sayısı ${soyIsim.length}");
  // Bu olmasıı gereken kullanımdır

  print("Benim İsmim $isim ve içerdiği kadakter sayısı is ${isim.length}");


  double en = 30.5 ;
  print(en.toInt()); // bu şekilde sadece tam kısmı alınır ve int değer döner
  double boy = 20.6;
  print("eni ${en.toInt()} ve boyu${boy.toInt()} olan bir dikdörtgenin alanı: ${(en * boy).toInt()}'dur." );
  // aynı zamanda matematiksel işlemlerde de gruplandırma kullanmamaız gerek
  print("eni $en ve boyu $boy olan bir dikdörtgenin alanı: ${en.toInt() * boy.toInt()}'dur."); 
  print("eni $en ve boyu $boy olan bir dikdörtgenin alanı: ${(en * boy).toInt()}'dur." );
  // matematiksel işlemi yaparken ister giren elemanları tek tek çevirelim ister sonucu çevirelim 

}