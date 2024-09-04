// Lambda Fonksiyonu:


main() {
  // Normal fonksiyon
  void fonksiyonAdi(int parametre, int parametre2){
    int yacapagiIslem = parametre * parametre2;
    print(yacapagiIslem);
  }

// bu fonksiyonu isimsiz de yazabiliriz, buna lambda fonksiyon denir.
(int parametre, int parametre2){
    int yacapagiIslem = parametre * parametre2;
    print(yacapagiIslem);
  };


// bu fonksiyonu kullanabilmemiz için bir değişkene atamamız gerekmekte.

Function lambdaFonksiyon = (int parametre, int parametre2){
    int yacapagiIslem = parametre * parametre2;
    print(yacapagiIslem);
  } ; 
// fonksiyon tipinde bir değişken oluşturduk, var da atayabiliriz

// kısa şekilde de yazabiliriz.

var f2 = (int parametre1, int parametre2) => print(parametre1 * parametre2);

// yukarıda yazdığımız fonksiyonun aynısı

// bu fonksiyonu çalıştırmak için de fonksiyonIsmi(); şeklinde yazmalıyız ve içlerine parametrelrei vermeliyiz

lambdaFonksiyon(2,5);
f2(6,7);



// Higher Order Function Kavramı: bir fonksiyonu parametre olarak alan veya geriye fonksiyon döndüren fonksiyonlardır. Bu ikisini aynı anda da yapabilir.

List<int> liste = [1,2,3,4];
/*liste.forEach((element) {
  print("Elemant $element");
});*/

 // bu yapıda listedeki elemanları tek tek laıyor ve  bu elemana süslü parantez içindeki işlemi uyuguluyor. 

// forEach içine parametre olarak fonsiyon almış oluyor.Nasıl mı?
(element) { };  //bu yapı yukarıda bahsettiğimiz lambda yapısı yani isimsiz fonksiyon. forEach parametre olarak bir fonksiyon aldığı için bir Higher Order Function dır.

liste.forEach(callback); // parametre olarak bir fonksiyon aldı ve biz burada ekstra bir çalıştırma işlemi yapmadık. forEach(); bunu kendi yapıcak. Çünkü burada bizden sadece değer yollamamızı istiyor o değer- parametre de fonksiyon.


kendiForEachYapim(liste, (int deger, int index) {
  print("Deger $deger ve index $index");
});
}

void callback( int element) { // isimlendirilmemiş olan lambda fonksiyonuna callback şeklinde iism verdim.
  print("Elemant $element");
} 

// kendi forEach fonksiyonumuzu yazalım.

void kendiForEachYapim (List<int> liste, Function callback) {
  for (int i = 0; i < liste.length; i++) {
    callback(liste[i], i);
  }
}