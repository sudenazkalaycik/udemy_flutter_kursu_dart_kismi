// haci hesaplayan fonsiyon : en , boy, yükseklik:

import 'dart:io';

void main() {
  print("En değerini giriniz: ");
  double en1 = double.parse(stdin.readLineSync()!);
  print("Lütfen boy değerini giriniz: ");
  double boy1 = double.parse(stdin.readLineSync()!);
  print("Lütfen yükseklik değerini giriniz: ");
  double yukseklik1 = double.parse(stdin.readLineSync()!);
  double sonuc = hacimHesabi(en1, boy1, yukseklik1);
print("Hacim: $sonuc");
}

double hacimHesabi(double en, double boy, double yukseklik) {
double hacim = en * boy * yukseklik;
return hacim;
}

