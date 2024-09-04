

class Musteri {
  int? _musteriNo;


/*
Musteri(int musteriNo) {
  this.MusteriNo = musteriNo;
} */

//Musteri(this._MusteriNo);

Musteri(int musteriNo) {
  _musteriNoKontrol(musteriNo); // gelen değeri kontrol etmek için fonksiyona yönlendiriyoruz, fonksiyonda koşula göer atama yapıyor
}

void set museriNoAta(int no){ // yazımda fonksiyondan tek farkı set alması başına. çağırma kısmında ise direkt karşılığına değer yazabiliyoruz. normalde bir fonksiyon direkt değer almaz.
   if(no > 300){
    _musteriNo = no; // şartı sağlarsa musteri no ya atama yap no yu
  }
  else {
    return;
  }

}


void _musteriNoKontrol(int no){ // setter gibi çalışır
  if(no > 300){
    _musteriNo = no; // şartı sağlarsa musteri no ya atama yap no yu
  }
  else {
    return;
  }
}
void bilgileriYazdir(){
    print("Müsteri no oluşturuldu: Müsteri numaranız: $_musteriNo");
  }


  // getterda da geriye döndüreceği değer
  String get MusteriNoSoyle{
return "Müşteri no: $_musteriNo";
  }


  // bunu parantezlerden kurtularak  da yazabilriz 
String get musteriNoSoyle2 => "Musteri no: $_musteriNo";


// getter ve setterlara genel bir kavran olarak  encapsulation denir

}