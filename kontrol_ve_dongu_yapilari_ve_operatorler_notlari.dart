
// ignore_for_file: dead_code

import 'dart:io'; // kullanıcıdan veri alınmasında kullanılar stdin.readLineSync(); komutunun çalışması için gerekli bir kütüphanedir.


void main (){


int sayi1 = 12;
num sayi2 = 12;

if (sayi1 > sayi2) {
  print("$sayi1 $sayi2 den büyüktür");
}
else if (sayi1 < sayi2) {
  print('$sayi1 $sayi2\'den küçüktür');
}
else {
  print("sayılar eşittir");
}
  



// if else 
// && bu ve anlamına gelir ppythondaki and ile aynıdır.

// öğrencinin ders notuna göre harf puanlaması yapalım ve geçip geçemediklerini yazdıralım

int not = -20;

if(not <= 100 && not >= 90){
  print("Notunuz: AA - Geçtiniz");
}
else if(not < 90 && not >= 80){
  print("Notunuz: BA - Geçtiniz");
}
else if(not < 80 && not >= 70){
  print("Notunuz: BB - Geçtiniz");
}
else if(not < 70 && not >= 60){
  print("Notunuz: CA - Geçtiniz");
}
else if(not < 60 && not >= 50){
  print("Notunuz: CB - Geçtiniz");
}
else if(not < 50 && not >= 40){
  print("Notunuz: CC - Şartlı Geçtiniz");
}
else if(not < 40 && not>0){
  print("Notunuz: FF - Kaldınız");
}
else {
  print("Notunuz 0'dan küçük olmaz");
}



//Ternary kısa if yazımı ve null  değerleri


int sayiBir = 20;
var sayiIki = 40;
int kucukSayi; //  değere 


//kod içerisinde atama yapılıyorsa sorun çıkmaz


if(sayiBir > sayiIki){
  kucukSayi = sayiBir;
}
else{
  kucukSayi = sayiIki;
}

//sayiIki < sayiIki ? kucukSayi = sayiBir : kucukSayi = sayiIki; 
// "?" if,  ":" ise else anlamına gelir

kucukSayi = sayiBir < sayiIki ? sayiBir : sayiIki; 
// burada amaç if değeri dopru iste  kucukSayi değişkenine atamak yani if kısmı sağlanırsa sayiBir atanıyor değil ise sayi sayiIki

print("küçük sayi: $kucukSayi" );

// dart a null değer atayamıyoruz çünkü olur da değer vermeyi unutursak program çakılır. Bu nedenle null değişken vermek istiyorsam değişken tipi sonrasına ? koymam gerekir. O zaman sorun çıkmaz.


String? ad = null;
String? soyAd  = "Kalaycık";
String mesaj;

mesaj = ad ?? soyAd; // ad null değilse adı ata null ise sayAd ı ata demek
print("merhaba $mesaj");

 
 
 //switch de if else gibidir ama biz buraya değeri veririz o bize çıktıyı verir. caseler if, else if gibi çalışırken default da else gibi çalışır. her bir case sonrası break continue gibi komutlardan birini kullanmalıyız.
 //burada bir aralık vermıyoruz direkt algoritmik olarak yazmamız gerek

 // switch kullanırken double değerinde değişken kullanamiyoruz

String sonuc = "Sueda";

 switch(sonuc){
  case "Sudenaz":
  print("Bildin");
  break;


  case "Sude" :
  print("Yaklaştın");
  break;

  default:
  {
    print("Bilemedin, tekrar dene");
  }




// && -> ve , || ->veya, ! -> değil operatörü

// farlı bir örnek verelim
bool sude = true;
bool naz = true;


print(sude && naz ); // şart sağlanma durumuna göre çıktı veriri && her ikisi de doğru ise true diğer durumlarda false döner 
print(sude || naz );
// şart sağlanma durumuna göre çıktı veriri || bir tanesi her ikisi de yanlış ise false diğer durumlarda hep true döner
print(!naz);  
// burada da değerin değili yanı true ise false, false ise true dönecektir

// operatörlerde duruma göre daima false çıkan durumlarda (örneğin dğişkenlerin değerleri false iken ve operatörünün çıktısı gibi) dead code uyarısı alırız. Bu zaten mantıksal olarak doğru olmayan bir sorgu olduğunu daha net ifadeyle gereksiz olduğunu söyler dead code : ignore diyerek kod satırının // ignore_for_file: dead_code, duplicate_ignore diyerek de dosyadaki tüm dead codeların  görmezden gelinmesini sağlayabiliriz.




// for döngüsü yapısı, 3 parametre alı. 1. sı döngüyü kontor edecek parametre ve alacağı ilk değer, 2.si döngünün çalışma şartı, 3.sü ise her adımda döngüyü kontrol eden değişkene yapılacak olan işlem (ör: i++  ->  i yi 1 arttır gibi)

for(int i = 0; i < 10; i++ ) {

print("Sudenaz");
}

// 20 ile 40 arasındaki çift sayıları yazdıran program
for(int i = 20; i <= 40; i++){ // aralık belirtmeme gerek yok i nin başlangıç değerini belirleyi sonra bitişini abelirlemem yeterli
  if(i%2 == 0){
    print("$i bir çift sayıdır");
  }
  else{
    print("$i bir tek sayıdır");
  }
}

// Liste - Dizi içinde gezmek istersem nasıl yapmam gerek

List isimListesi = ["Sudenaz", "Sude", "Su", "Naz"];
List sayilar = [1,2,3,4,5];

for(String isim in isimListesi){
  print(isim);
}

for (int sayi in sayilar) {
print(sayi);
}


for (int i = 0; i < isimListesi.length; i ++ ){
 print("Okunan eleman: " + isimListesi[i]);
}


// while döngüsü

int counter = 0;
while(counter < 5){
  print("Sudenaz Dart Öğeniyor.");
  counter++;
}

print("*********************");

// do while önce kod çalıştır sonra while a git  yani önce yaptırmak istediğimizi yaptırır sonra isşeme sokarız
int counter2 = 0 ;
do {
  print("Sudenaz Dart Öğeniyor Ders: $counter2");
  counter2 ++ ;
}while(counter2 <= 4);

//break : o döngüden çıkar, continou : döngünün o kısmını görmezden gelir yani o kısmı çalıştırmaz. devram eder yani


// döngülere isim verebiliriz. Bunu da  döngünün basşına vermek istediğimiz ismi yazıp ":" ekleyrek yapılıyor. ve bunu direkt isim ile kulllanabiliyoruz yanı diyelim ki döngünün adı döngü1, break döngü1  dediğimde o döngüden çıkabiliyorum iç içe döngüde. ya da continou döngü1 diyebilirim vb.




//VERİ ALMA
// stdin.readLineSync(); komutu kullanıcıdan veri almamızı sağlar

print("Adınızı giriniz:");

String? kullanici = stdin.readLineSync();

print("İsminiz: $kullanici. Doğru mu?");



print("yaşınızı giriniz");
// 5 yıl sonraki yaşımı bana söylesin

int? kullaniciYas = int.parse(stdin.readLineSync()!); // int.parse("30") metni sayıya dönüştürür. Ama sonuns ! eklememiz gerekiyor yoksa hata alıyoruz. Bunun nedeni ise null olmayacağını söylemek. ayrıca double a  da dönüştürebiliyoruz.

kullaniciYas += 5;
print("baya gençsiniz $kullaniciYas");
}

}