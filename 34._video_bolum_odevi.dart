import 'dart:io';

void main (){


// soru 1:
print("Değer giriniz: ");
int sayi =  int.parse(stdin.readLineSync()!);
print(ciftSayilar(sayi));

print("--------------");

// soru 2 :
print("yarıçap değeri giriniz: ");
double yaricap = double.parse(stdin.readLineSync()!);
//print("pi değeri giriniz: ");
//double pi = double.parse(stdin.readLineSync()!);
print("Dairenin alanı: ${daireAlani(yaricap)}"); // eğer pi değeri eklenecekse  üst iki satır yourmdan çıkarılmalı

print("--------------");


// soru 3 :
print("Üçgenin ab kenar uzunluğunu giriniz: ");
double ab = double.parse(stdin.readLineSync()!);
print("Üçgenin ab kenar uzunluğunu giriniz: ");
double ac = double.parse(stdin.readLineSync()!);
print("Üçgenin ab kenar uzunluğunu giriniz: ");
double bc = double.parse(stdin.readLineSync()!);

ucgenTipi(ab, bc, ac);

}



// SORU 1 : parametre olarak int değerinde sayı alsın ve bu sayıya kadar olan çift sayıları döndürsün

List ciftSayilar(int sayi){
  List liste = [];

  for(int i = 0; i < sayi ; i++)
  {
    if(i % 2 == 0){
      liste.add(i);
    }
  }
  return liste;
}


// SORU 2 :Daire alanını hesaplayan  fonskiyonu yaz pi sayısı opsiyonel olsun ve default değeri 3.14 olsun.

double daireAlani (double yaricap,[double pi = 3.14]){
  return pi * yaricap * yaricap ;
}



// SORU 3: bir üçgenin kenarlarını isim olarak parametre alan ve üçgenin kenarlarına göre nasıl bir üçgen olduğunu YAZDIRAN bir fonksiyon ! değer döndürmesin yani

ucgenTipi (double ab, double bc, double ac) async {
  if((ab == ac) && (ab == bc) && (ac == bc)) {
    print("Bu bir eşkenra üçgendir.");
  }
  else if ((ab == ac) ^ (ac == bc) ^ (bc == ab)){
    print("Bu bir ikiz kenar üçgendir.");
  }
  else{
    print("Bu bir çeşit kenar üçgendir.");
  }
}