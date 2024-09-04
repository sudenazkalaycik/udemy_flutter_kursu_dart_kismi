// kalıtımın yani inheritance

// kalıtım sayesinde ortak kısmları bir class da toplarız. BU sayede ortak özellikleri tekrar tekrar kullanmamış oluruz. Ortak(ebveyn-ana) classtan alt yani çoçuk class a o özellikleri eklemek için de extends kullanılanırız.Ör:

void main(List<String> args){
  User user1 = User();
  NormalUser normaluser1 = NormalUser();
  normaluser1.email; // normalUserda tanımlı değildi email özelliği ama extend sayesinde userdan bu özelliğe ulaşabiliyoruz.
  normaluser1.davetEt();
  user1.girisYap();
  normaluser1.girisYap(); // NormalUser User classından giriş yap özelliğine ulşamasına rağmen @override sayesinde girişYap() fonksiyonunu kendine göre düzenlediği için Userdaki "User girişi yaptı." değil de "Normal kullanıcı giriş yaptı" şeklinde çıktı alıyoruz.

  SadeceOkuyabilenNormalUser sadeceUser = SadeceOkuyabilenNormalUser();
  sadeceUser.email = "sudenazkalaycik@gmail.com"; 
  print(sadeceUser.email); // SadeceOkuyabilenNormalUser'da email özelliği yoktu ama extends ile normalUser'ın özelliklerine erişti.NormalUser'da User'ın özelliklerine erişti. Dolaylı olarak SadeceOkuyabilenNormalUser email password gibi User class ının özelliklerine erişenildi. İyiki varsın extends!!!

  // NOT: biz bulunduğumuz classtan yani çocuk classtan üst parent classlara erişebiliriz ama parent-ana classlar cocuk-alt classların özelliklerine erişemez. Ağaç yapısına benzetmek istersek kök parent claslar olsun, dallar da alt- çocuk classlar olsun. Dallar kökten su alabilir ama kök dallardan su alamaz. !!


  // eğer üst sınıfın bir özelliğini kullanmak istiyorum ama aynı zamanda da kendi içimde sadece kendime özel olarak bunu değiştirmek istiyorum diyelim o zaman da @override kullanmam gerek. @override yazıp alrına isteiğim özelliği çağırıp değişikliğimi yapabilirim :)

  User user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();
  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser();

  // yukarıda değişkenler tanımlarken normalde kimliği AdminUser olan ya da SadeceOkuyabilenNormalUser olan değişken isimlerimin tipini üst- parent class adı olarak verebilirim. Çünkü bunlar ana-üst-parent(hangisini demek istersen) sınfına bağlı alt sınıflar bu yüzden user üst kimliğini verebiliriz. Bunun adı da UPCASTİNG YUKARI ÇEVRİM'dir daha kitapsal tanımı ise FARTKLI VERİ TÜRLERİNİ BİR VERİ ALTINDA TOPLAYABİLMEK. Güzel yani ise diyelimki bir liste oluşturmak istiyoruz. bunun tipini ayrı ayrı verip ayrı listeler oluşturmak zorunda kalacak ve bu listeleri en son birleştirmek zorunda kalıcaz oysaki tek kimlik vererek tek listede hepsini bulundurbiliriz.Ör:

  //List<NormalUser> tumNormalUserlat = [];
  //List<AdminUser> tumAdminUserlar = [];
  // bunun gibi tek tek oluşturmak yerine şunu yapabilriz
  List<User> tumKullanicilar = [];
  tumKullanicilar.add(user1);
  tumKullanicilar.add(user2);
  tumKullanicilar.add(user3); 
  tumKullanicilar.add(user5);
  tumKullanicilar.add(user6);// ...... bu şekilde devam edebililiriz.

  test(user1);
  test(user2);
  test(user3);
  test(user4);

  // yukarıda 4 farklı veri türü var ama hepsini karşılayan tek bir fonksiyon var o da User kimliğind veri alan test fonksiyonu. Bunu adı da POLİMORFİZ'dir. yani ÇOK BİÇİMLİLİK. 

  }



// SUPER komutu ile üst classların parametrelerine  erişmemizi sağlayacaktır. ayrıca bunu yapmak için o classdaki yeni ya da fakrlı istenen parametreyi super.ustclassparametresi = altclassparametre yaparsak almış oluruz zaten biz OVERRİDE ile üst aınıftaki özelliği değiştirmeden önce default olarak super.oÖzellik çalışır. 


  void test(User Kullanici){
    Kullanici.girisYap();
  }


class User{ // sisteme giriş yapmak hem normal hem de admin kullanıcının yapacağı ortak şeylerdir.
  String email = "";
  String password = "";

  void girisYap(){
    print("User girişi yaptı.");
  }




  // extends ile bibirine bağlanan sınıflarda daima üst sınıfın kurucu methodu önce çalışır. Yani hiyerarşık gider. Su önce kök sonra gövde sonra dal sonra çiçeklere ulaşı şeklinde metoforlaştırabiliriz. Eğer su önce köke gitmezse gövde su alamaz gövde su alamazsa dal alamaz gibi. Yani önce en üst classdaki kurucu methon sonra bir altındaki varsa bir altındaki şeklinde. Basit bir ıspat yapacak olursak üst sınıfta this ile 2 parametre girilmesini zorunlu tutarsak alt parametrede de bu parametrelerin girilmesi zorunlu olacaktır, eğer parametre girişi yapmazsak sistem hata verecektir. Çünkü önce üst sınıfın this ile parametresi zorunda kılınmış ve önce bu kurucu method çalışmıştır. Sonara da diğerleri. 
  


  //sistem bize this komutundan kaynaklı kızacak ve bizden aynı komutları classlara girmemizi isteyecek ve tek tek parametre aldıracaktır. Ama bunu yapmaya gerek bırakmayacak bir kullanım var. O da super. eğer class ın parametre kısmından sonra super(parametre, parametre) yazarsak zaten üst classda almış olduğu parrametreleri de alt class da kullanacaltır.




Asker sude = Asker("Sudenaz", 19);
Er melis = Er("Melisa" , 26);

}

class NormalUser extends User{ // extends sayesinde user classtaki tüm yapıya bu classdan da erişeceğiz. 
void davetEt () {
  print("Normal kullanıcı arkadaşı x'i davet etti");
}

@override
void girisYap() {
   print("Normal kullanıcı giriş yaptı"); // aslında userda bu fonksiyon "User girişi yaptı." şeklindeydi fakat ben @override ile kendime göre değiştirdim-özelleştirdim.
  }
}

class AdminUser extends User{
  void ToplamKullaniciSayisiniGoster () {
    print("Toplam kullanıcı sayısı 20.");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser{ // bu normal userin erisebielceği her şeye erişebilir. normla user, user a erişebiliyor. Bu classtan normal usera eriştiğimiz için dolaylı olarak usera erişebilriz.
  void adiniSoyle(){
    print("Ben sadece adımı söyleyebilirim yetkin normal kullanıcıya göre sınırlı.");
  }

  @override
  void girisYap() {
    print("SadeceOkuyabilenUser giriş yaptı");
  }
}


class Asker {
  String ad = "Sudenaz";
  int yas = 0;
  
  Asker(this.ad, this.yas){
    print("Asker sınıfı kurucu methodu çalıştı");
  }
  void selamVer (){
    print("Merhaba ben $ad, $yas yaşındayım");
  }
}

class Er extends Asker{
  Er(String ad, int yas): super(ad,yas) {
    print("Er sınıfının kurucu methodu çalıştı.");
  }
}


// kısaca polimorfizm bir classdaki özelliği başka bir class da kalıtım kullanarak almak ve kendine göre düzenleyerek kullanmak.