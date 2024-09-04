//  ~/ bölümde tam kısmı verir
// program başlar ve hata aldığı yere kadar çalışır hata ve  sonrasını çalıştırmaz.

//import 'dart:math'; sqrt için kullanıyoruz

//import 'dart:svg';

main(){

 /* 
print("Program başladı.");

try{ // hatalı olabilecek kodu try ile deniyoruz
//int sayi2 = 100~/0;
int sayi = 100~/int.parse("Sudenaz"); 
print(sayi);
//print(sayi2);

// ignore: deprecated_member_use
}on IntegerDivisionByZeroException { // istersek direkt bu sorunun yaratacağı hatayı yazar bu hataya neden şeyi bastırır ya da ne yapmaları gerektiğini söyleriz. tıpkı aşağıdaki gibi

print("Bölen sıfır olamaz");
} on FormatException catch(hata) {

print(hata.message); // bu hatayı mesaj olarak verir ör:Invalid radix-10 number

print(hata.source); // bu da hatanın nereden kaynaklandığını söyler
}

catch(hata){  // çıkan hatayı yakala bir değişkene ata ve buna işelm yap.b
  print("Hata çıktı: ${hata.toString()}");

}finally{ // hata çıksın çıkmasın bu yapı çalışır.
  print("işlem bitti"); 
}
print("program bitti");
*/

// kendi hatamızı fırlatmak istesek throw yapıısnı kullanırız

/*
try{double deger = kareKokunuAl(-20);
print("Değer ${deger.toStringAsFixed(2)}"); // bu virgüldenn sonra kaç sayı göstericeğini ayarlar}
} on FormatException catch(hata){ 
  print(hata.source);
  }
  catch(hata){ // catch genel bir ifadedir .mesaj gibi ifadeler yazdıramam ama bunun üstteki gibi yanına hatanın spesifik adını yazarsam daha  fazla detay verebilirim
    print(hata);
  }
}

// try ile başlayıp catch yazmazsak  yine hata alırız çünkü hata fırlatılır ama yakalanamaz. catch ifadesi fonksiyonun içinde de olabilir başka bir bölümde de olabilir

double kareKokunuAl(int i) {
  if (i < 0) {
    throw Exception("Negatif sayılar için karekök alınamaz");
}
else{
  return sqrt(i);
}
*/


// kendi istisna yapılarımızı oluşturalım:

/*
try{
  Ogrenci sudenaz = Ogrenci(-200);
print(sudenaz.yas);
} on AgeException catch(hata){
  print(hata.mesaj);
} finally{
  print("işlem bitti");

// burası ne olursa olsun çalışan kısımdı öyleyse buraya hatalı kodu verirsek ne olur?  Yine hata almış oluruz ve burada da hata fırlatmamız gerekir
}

  
  }
  
class AgeException implements Exception{
  String mesaj;

  AgeException({this.mesaj = "Age Exception" });

@override
String toString() {
  return "Hatanın toString metotu çalıştı";
}

  }


  class Ogrenci{
    int yas = 0;
    Ogrenci(int yas){
    if (yas < 0 ){
      throw AgeException(mesaj: "AgeException - yaş negatif olamaz");
    }else{
      this.yas = yas;
    }
    }
    */

// Generic tip kavramı - önemi - sınıf oluşturma ve fonksiyon oluşturma

// bunun sayesinde yapının ne tip olacağını söyleriz ve bu şekilde hatalı veri girişinin önüne geçeriz. <> arasında yazarız. ör:
List <String> liste = [];
liste.add("Sudenaz");
//listem.add(5); listenin tipi string ve sadece string tipinde veri alacağından int gibi str tipi dışında bir veri kabul etmez. Bu nedenle hata verir.

// generic tipler List, map set future stream gibi yapılarda zaten vardır. Ayrıca kendi oluşturduğumuz sınıflarda ve methotlarda da kulllanabiliriz. Böylece hem daha güvenli kod yazar hem de benzer amaçlı geliştirilen kod yapılarını tek bir yapıda toplayabiliriz.


// List<E> ==>  Elemant
// Map<K,V> ==> Key, Value
// R ==> Methodların return tipleri için 

////////////////////////////////////////


MyStack myStack = MyStack();
myStack.push(5);
myStack.push("Sudenaz");
myStack.push(true);
myStack.push(false);
myStack.push(7);

print(myStack.pop());
print(myStack.pop());
print(myStack.pop());
print(myStack.pop());
print(myStack.pop());

// classda herhangibir tip tanımlaması yok bu nedenle her tipten veri alınabiliyor.


IntMyStack intMyStack = IntMyStack();
intMyStack.push(5);
//intMyStack.push("Sudenaz");
//intMyStack.push(true);
// bu gibi yapılarda hata alacağız. çünkü veri tipleri int den farklı

StringMyStack stringMyStack = StringMyStack();
stringMyStack.push("Sudenaz");
//stringMyStack.push(5);
//stringMyStack.push(true);
// ifadelerinde hata alacağız

GenericStack <String> genericStack = GenericStack(); // <> arasına ne yazarsak o bu  yapının veri tipi olacak yani generic classtaki T tipinin yerien mainde çağırdığımız classın <> arasında yazdığımız tip geçerli olur
genericStack.push("Sudenaz");
//genericStack.push(5); tip String olduğu için hava verir eğer tip int olasaydı yukarıdaki hata verecekti.
print(genericStack.pop());

double doubleOrtalama = ortalamaBul(5.3, 8);
double intOrtalama =  ortalamaBul(5, 78);
print("Ortalama değer: $doubleOrtalama");
print("Ortalama değer: $intOrtalama");
} 


// kendi generic tipli classımıız oluşturalım.

class  MyStack {

  List _listem =  []; // stack ile bu örneği yapacağız.
  // ayrıca listem yapısı _ dan dolayı gizli ama classı main ile aynı sayfaya yazdığımız için yine erişimimiz olacak buna çok fazla takılmayalım. Şu an sadece öğreniyrpor ve bunları not alıyorum.

push(yeniEleman){
_listem.add(yeniEleman);
}


pop(){
  return _listem.removeLast();
  }
}


class IntMyStack {

List<int> _listem =  <int>[];

void push( int yeniEleman){
_listem.add(yeniEleman);
}


intpop(){
  return _listem.removeLast();
  }
}


class StringMyStack {

List<String> _listem =  <String>[];

void push( String yeniEleman){
_listem.add(yeniEleman);
}


String pop(){
  return _listem.removeLast();
  }
}


class GenericStack <T>{
  List<T> _listem =  <T>[];

  void push( T yeniEleman){
_listem.add(yeniEleman);
}


T pop(){
  return _listem.removeLast();
  }
}




// kendi generic tipli methodlarımızı oluşturalım.

double ortalamaBul(s1,s2){
  return (s1 + s2) / 2;
}

// bunu generic yapmak  için 
double genericOrtalamaBul <T extends num>(T s1, T s2){
  return (s1 + s2) / 2; // eğer num sınıfını extends etmezsek T yerine herhnagibir şey gelebilir yani obje(nesne) de gelebilir. nesneleriz biz toplayıp bölemeyiz. Bu sorunu gidermek içinde num sınıfını extends ediyoruz. bu sayede double ve intler ile çalışabileceğimizi bildirmiş oluyoruz.
}