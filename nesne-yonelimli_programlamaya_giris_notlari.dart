
// CLASSLAR

import 'nesne_yonelimli_programlama_musteri_classi.dart';
import 'nesne_yonelimli_programlama_veriTabani_classi.dart';  // bu diğer dosyaya erişmemizi sağlar



class Ogrenci {
  String? adi;
  String? bolumu;
  int? numarasi;
  bool ? aktifMi;

  

// ayrıca burada her zaman biz oluşturmsak da class ile otomatik oluşan ve çalışan bir constructor vardır. Bu bizim değişken yani nesneleri tet tek değil de bu methot ile tek  satırda yazmamızı da sağlar

  void bilgileriYazdir() {
  
  print("$adi isimli $bolumu bölümünde okuyan $numarasi numarali öğrenci aktif mi? : $aktifMi" );
  }

  void aktiflikDurumu(){
    print("Öğrencinin aktiflik durumu: ");
  }


  // bu aşağıdaki varsayılan kurucu (constructor) methoddur ve biz oluşturmasak da default olarak class oluşturunca oluşturulduğu gibi çağırılmasa da bir şeyler yazılırsa terminalde çıktısını görürüz. Eğer  default halde ya da parametresiz halse kalırsa nesnelere değerleri ilk yaptığımız gibib satır satır tek tek vermemiz gerekir fakat parametreli verirsek durum  değişir. Aşağıda parametre alan kurucu methodu görüyoruz ve bu methodu yalnızca bir defa oluşturabiliyoruz class içerisinde. Bir de kurucu methodun parametresiz olanı var.

  Ogrenci(this.adi, this.bolumu, this.numarasi, this.aktifMi){
    print("Kurucu mhis.soyadiethod tetiklendi"); }

    // buradaki .this komutu methoda girilen bilgilerin hangi objeye yani nesneye ait olduğunu söylüyor bu sayede void maindeki değer girilmiş methodun değerlerinin nesneler ile eşleşip class ın dolmasını sağlıyor.



    // eğer kurucu methoda yani constructor kullanırsak her objebinin / nesnenin değerini girmek zorundayız ama diyelim ki ben objelerin hepsine değer vermek istemiyorum. İşte o zaman da karşımıza adlandırılmış method geliyor. Kurucu methoddan farklı olaraka istediğimiz kadar class içerisinde farklı şekilde oluşturabiliyoruz. 


    // uzun yolla yazalım
    Ogrenci.aktifligiBilinmeyenKurucuMethod(String adi, String bolumu, int numarasi){
      this.adi = adi;
      this.bolumu = bolumu;
      this.numarasi = numarasi;
  }

      // kısa yolla yazalım
    Ogrenci.numarasizKurucuMethod(this.adi, this.bolumu, this.aktifMi); 

}



 
// factory kurucu methodu return etme ve koşullandırma esnekliği verir
class Kimlik{

  String? ad;
  int?  id;


Kimlik(this.ad, this.id) {
  print("Kimlik classının kurucu methodu tetiklendi");
}

void kimliksorgu(){
  print("Adı: $ad, ID: $id");
}


  factory Kimlik.idGoreKurucuMethod(String ad, int id){   
 if (id < 0) {
  return Kimlik("Sudenaz", 5);  
 }
 return Kimlik("Mustafa" ,20);
  }

}



void main(List<String> args) {


// NOT: ! işaretini null olabilen ama o durumda nul olmayacak ifadelerde kullanılırız. 



// CLASSLAR

// classlar yani sınıflar kendimiz oluşturduğumuz yapılardır. İçlerinde değişkenler ve fonksiyonlar yazabiliriz. Bu fonksiyonlara da method deriz. 



/*
Ogrenci sudenaz =Ogrenci();
sudenaz.adi = "Sudenaz";
sudenaz.yasi = 19;
sudenaz.soyadi = "Kalaycık";
sudenaz.cinsiyet = "Kız";
sudenaz.numarasi = 1234567890;
sudenaz.bolumu  = "Bilgisayar Mühendisliği"; 
sudenaz.bilgileriYazdir(); 
*/
 // Yukarıda olduğu gibi tek tek yazmak yerine kurucu methodu kullanıp ve bu kurucu methodun değerlerini girip bir değişkene atayarak da yazabiliriz.


  var sudenaz = Ogrenci("Sudenaz", "Bilgisayar Mühednisliği", 02235076051, false);
  sudenaz.bilgileriYazdir();

  var ayse = Ogrenci("Ayşe", "Hemşirelik", 022348158057, true);
  ayse.bilgileriYazdir();

  var mert = Ogrenci("Mert", "Maden Teknikerliği", 022348158057, true);
  mert.bilgileriYazdir();
 
// burda göstermeye çalıştığım şey class bir kez oluşturulur ve istediğin kadar kullanılır. Ben verileri değiştirsemde temel yapılar hep aynı. 

var sadeceIsimSoyisimBolum = Ogrenci.aktifligiBilinmeyenKurucuMethod("Sudenaz","Fen Edebiyat", 0235472151616484); // adlandırılmış kurucu method kullanılmı

sadeceIsimSoyisimBolum.bilgileriYazdir(); // diğer değerler null olarak gelicek
sadeceIsimSoyisimBolum.aktiflikDurumu(); // bu fonksiyonda değer gelmez çünkü bunu girmedik

var aktiflik = Ogrenci.numarasizKurucuMethod("Selma", "Mekatronik", true); // kullanabilmek için bir değişkene atadık
aktiflik.bilgileriYazdir();






// private : kullanıcının  private e alınanları okumasını ve üstüne veri yazmasını engeller

VeriTabaniIslemleri db = VeriTabaniIslemleri();
bool sonuc =db.baglan(); // true ya da false değer döndürücek bağlandık mı bağlanamadık mı?

/*print(db.kullaniciAdi);
print(db.sifre);  */ // şifreye ulaşamamam gerekiyor güvenlik açısından ama bu şu an ulaşabiliyorum

/* db.sifre = "12592423"; */  // buraa şifreyi değiştiremem ama sistemin hatalı çalşmasına neden olabilirim.Bunları yapmaya yetkim olmamalı

// eğer private olmaz ise yukarıdaki gibi  bu bilgilere rahatlıkla ulaşabileceklerdir. Bunu gizlememiz lazım bunu da private değişkenler/methodlar sayesinde yapacağız. Private yapmak için de  _isim şeklinde kullanmalıyız gizli ve işlem yapılmamasını istediğimiz şeyleri


//private yaptık artik db. yazınca private değişken/methodlar ulaşamayacağım. denemeylim
db.baglan(); // erişebildiğimiz tek method bağlan methodu olarak görünüyor çünkü diğerleri gizlide

if(sonuc) {
  print("Başarıyla bağlandınız");
}else{
  print("Bağlanamadınız");
}


VeriTabaniIslemleri db2 = VeriTabaniIslemleri.loginWithNameandPassword("Sudenaz", "010101");
print(db2.baglan());


// getter ve setter


Musteri m1 = Musteri(593);
m1.bilgileriYazdir();


Musteri m2 = Musteri(-999);
m2.bilgileriYazdir(); // burada null çıktısıs alacağız çünkü şart sağlanmıyor



// veri atamaya yarayan fonksiyonlara setter denir. Musteri classında arkada çalışan fonnksiyon gibidir

// yazımda fonksiyondan tek farkı void de  sonra set alması . çağırma kısmında ise direkt karşılığına değer yazabiliyoruz. normalde bir fonksiyon direkt değer almaz. musteri_giris dosyasındaki classdaki foksiyona yazıldı oradan bakabilirsin!!


m1.museriNoAta =952; // şeklinde atama yapabiliriz

// getter da setteri geriye döndürmemizi sağlıyor
// gette parantez yok sadece süsülü parantez kullanıırız
print(m1.MusteriNoSoyle); //bu return ettiği için print ile çağırıyoruz
}





