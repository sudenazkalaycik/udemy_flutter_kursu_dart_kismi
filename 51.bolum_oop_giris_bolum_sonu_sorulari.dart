// Soru 1:

import 'dart:math';

class Cember {
  double yariCap;

  Cember(this.yariCap){
    print("Yarıçap uzunluğu: $yariCap");
  }

  void alanHesapla(){
    print("Cemberin alani: ${yariCap * yariCap * 3.14}");
  }
}


// Soru 2:

class Ogrenci{
  int id;
  int notDegeri;  
    
    Ogrenci({this.id = 1, this.notDegeri = 1});
    @override
    String toString() {
      return "ID: $id  NotDeğeri: $notDegeri" ;       // Instance of 'Ogrenci' den kurtulmak için kullanıyormuşuz
      
}
}




void main() {
// şimdi kullanmak için bir değişkene atayalım

// Soru 1:
var sudenaz = Cember(5);
sudenaz.alanHesapla();

print("**************");

// Soru 2:
//Ogrenci ogr1 = Ogrenci(id:  5, notDegeri: 10);
List<Ogrenci> tumOgrenciler = List.filled(100, Ogrenci());
//print(ogr1);


ogrenciListesiniDoldur(tumOgrenciler);
for (Ogrenci oankiOGrenci in tumOgrenciler) {
  print(oankiOGrenci);
}
 print("Tüm öğrencilerin ortalaması: " + ogrencilerinOrtlamasiniHesapla(tumOgrenciler).toString());

}



void ogrenciListesiniDoldur(List<Ogrenci> liste){
  for(int i = 0; i < liste.length; i++){
  liste[i] = Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}



double ogrencilerinOrtlamasiniHesapla(List<Ogrenci> liste){
int toplam = 0;
for ( Ogrenci oankiNotDegeri in liste) {
  toplam += oankiNotDegeri.notDegeri;
}
return toplam / liste.length; }