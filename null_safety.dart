import 'dart:math';

class RastGeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return 'string ifade';
    } else {
      return null;
    }
  }
  int? get yas => 32;
}

void main(List<String> args) {

  final uretici = RastGeleMetinUretici();
  String? sonuc = uretici.degerUret(); 


if(uretici.degerUret() == null){
  print("Null değer oldu");
}else{
metniYazdir(sonuc!);  
//metniYazdir(uretici.degerUret()); // burada degerUreti bir kez daha tetikleriz bu nedenle null değer gelme ihtimali vardır. Bu nedenle metniYazdır fonksiyonuna String? yazmamız gerekir. Ya da değişkene atayarak bunu çözeriz.

}
}

void metniYazdir(String ifade) {
print(ifade);

}
