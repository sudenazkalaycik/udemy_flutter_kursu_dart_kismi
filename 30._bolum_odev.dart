// Soru : 1

// ignore_for_file: unused_local_variable

import 'dart:io';

void main(List<String> args) {
  print("İlk sınav notunuzu giriniz: ");
  int sinav1 = int.parse(stdin.readLineSync()!);

   print("İkinci sınav notunuzu giriniz: ");
  int sinav2 = int.parse(stdin.readLineSync()!);

  double ort = (sinav1 + sinav2) / 2 ;

  print("Ortlamanız: $ort");

print("*************");

// SORU: 2

print("KDV'li fiyarı öğrenmek için lütfen ürününüzün fiyatını giriniz: ");
int fiyat = int.parse(stdin.readLineSync()!);

double kdvliFiyat = fiyat + ((fiyat * 18)/ 100); 

print("Ürünün KDV'li fiyatı: $kdvliFiyat");


}