// ignore_for_file: unused_local_variable, duplicate_ignore

// ignore: duplicate_ignore
void main() {

  // LİSTELER

// sabit uzunluktaki bir liste için  ör: 

List <int> sayilar = List.filled(3, 5); // 1. parametre listenin uzunluğu, 2. parametre ise listenin elemanlarının en başta alacağı değer.
// <int> gibi tip belirtmek zorunda değiliz. Belirtmezsek dinamik olur ve her tipten veriyi alabilir 

print(sayilar); // [5,5,5]  -> liste oluştuğunda bu şekilde görünüyor olacak.

sayilar[0] = 2; // bu 0. indexteki elemana yeni değer atar
print(sayilar[0]); // bu da 0. indexteki elemanı ekrana bastırır



// büyüyebilen listeler 

// en kolay yolu  list liste = [] şeklinde oluşturmak
// listenin boyutunu atama yarak arttırabillirz. ör: sayilar.length = 30;  bu doğru bir yazımdır ve bir anda diyelimki içinde 4 tane eleman varken ve uzunluğu 4 iken uzunluğa 30 atandaığından dolayı null olarak 26 tane daha değer oluşturuldu. Ama null değer dart için bir sorun bu nedenle bunu başta bildirmemiz gerek. eğer listenin tipine ? eklersek bu benim değerlerim null da  olabilir demek olru ve sistem hata vermez


// bir diğer oluşturma şekli ise aynı sabit uzunluktaki listeler gibi. tek farklı içerideki growable yani büyüyebilir parametresini true yapmak: Örnek

// ignore: unused_local_variable
List<int> sayilarr = List.filled(3, 5, growable: true); // burada en başta içinde 3 eleman bulunan bir liste oluşur ve eleman eklemek istersek ya da çıkarmak istesek çıkarabiliriz.

// bir diğer oluşturma şeklide ör:  Liste <int> sayilar5 = List.empty() dir. Fakat burada growable parametresi false olur default olarak. Bunu true yapmamız gerekir büyüyebilir olması için.

// .remove() komutu aldığı eleman değeri ile karşılaşırsa siler, removeAt() indexteki elemanı siler . Sbit boyutlu listelerde çalışmaz


// .contains() girilen eleman listede var mı diye bakar.

// elemantAt() indexteki elemanı veriri
// elemanIndexOf() eleman listede kaçıncı indexte olduğunu verir.


//. shuffle() elemanların sırsasını rastgele değiştirir.



// SET YAPISI
// index yoktur yani sıralamayoktur. addAll() methodu bir listeyi set e katramamıza yarar



// MAP Oluşturma :
Map <String, int> denme = Map();
Map <String, dynamic> deneme = Map();

// gezerken de yapmamız gereken for döngüsü ile listelerde yaptığımız gibi for(String gezenEleman in mapIsmi) yapmak fark ise şuarada key gezemk istersek  for(String gezenEleman in mapIsmi.key) vazlue gezmezk istersem for(String gezenEleman in mapIsmi.values) demem gererkir

// bir de bunların ikisini birden tutan değer yani entries var for(String gezenEleman in mapIsmi.entries). bu hem key hem value aynı anda ulaşmamızı sağlar


// spreads öperatör listeleri birleştirirken köşeli paranntezlerden kurtalmamızı sağlar.

}