import 'dart:math';
import 'dart:io';
void main (){

// soru 1:

List <String> sehirler =["Malatya", "Adana", "Antalya"];
print(sehirler);
print("-------");
sehirler.add("Anraka");
sehirler.add("Mersin");
sehirler.add("Muğla");
sehirler.add("Eskişehir");

for (int i = 0; i < sehirler.length; i++ ) {
  print(sehirler[i]);
}

// soru 2:

Map <String, dynamic> donanimBilgisi= {
  
  "islemci çekirdek sayısı" : 5,
"ram miktari": 32,
"ssd var mı" : false
};

print(donanimBilgisi);


// soru 3:

Map <String, dynamic> sehirBilgisi = {
  "isim" : "Malatya",
  "ilçe sayısı" : 14 ,
  "plaka kodu" : 44
};

for( var eleman in sehirBilgisi.entries){
  print("${eleman.key} : ${eleman.value}");

}

// soru 4: 

List <int> liste1 = List.filled(5,0);
List <int> liste2 = List.filled(5,0);

for (int i = 0; i < liste1.length; i++){
  liste1[i] = Random().nextInt(50); //nextInt üst sınırı berlirler
}

for (int i = 0; i < liste2.length; i++){
  liste2[i] = Random().nextInt(50); //nextInt üst sınırı berlirler
}

List <int> tamListe = [...liste1 , ...liste2];

Set <int> kareler = {};
for (int sayi = 0; sayi < tamListe.length; sayi++){
  int sayininKaresi = sayi * sayi;
  kareler.add(sayininKaresi);
}
print(kareler);



// sour 5:
List <int> veriListesi = [];
int toplam = 0;
int count = 0;

while (true){
  
print("Lütden bir tamsayı değeri giriniz: ");
int kullaniciSayisi =  int.parse(stdin.readLineSync()!);
if (kullaniciSayisi != 0) {
toplam += kullaniciSayisi;
count++;
veriListesi.add(kullaniciSayisi);

}
else{
  double sonuc = toplam / count;
  print("Girilen tamsayılar: $veriListesi");
  print("Ortalama: $sonuc" );
  break;
}
}
}