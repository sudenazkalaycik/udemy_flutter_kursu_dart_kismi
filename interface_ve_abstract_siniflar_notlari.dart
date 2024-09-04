// çok geniş kapsamlı olup içerisinde belirli bir fonksiyon yazamadığımız classlara abstract denir. Ör: geometrik şekillerin alanlarını ve çevrelerini hesaplayan bir class dan bahsedelim. Bu classa ne bir işlem veremem her geometrik şeklin alan ve çevresini hesaplayabilmesi için. Bu nedenle bu fonksiyonun başına abstract ekler ve abstrackt olan fonksiyonun gövdesini yazmayız. Sonrasında @override ederek kendimize göer düzenleriz.




abstract class Sekil{
  
double alanHesapla();
double cevreHesapla();

void selamla(){
  print("Ben şekil sınıfındanım.");

  // abstract sınıflarda en az bir tane gövdesiz fonksiyon bulunmalı.
  // abstract sınıflar alt sınıftan extends eğildiği zaman alt sınıfta gövdesiz yazılmış fonksiyonlar @override edilmek zorundadir ama normal  fonksiyonlar isteğe bağlıdır

}
}

 
 
class Kare extends Sekil{
int kenar;

Kare(this.kenar);

  @override
  double alanHesapla() {
   return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
   return  kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("Ben Kare sınıfındanım.");
}
}

class Dikdortgen extends Sekil{
  int uzunKenar;
  int kisaKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);

  @override
  double alanHesapla() {
    return uzunKenar * kisaKenar.toDouble();
  }
  

  @override
  double cevreHesapla() {
    return (uzunKenar + kisaKenar) * 2.toDouble();
  }
  
    @override
  void selamla() {
    print("Ben Dikdörtgen sınıfındanım.");
}
  }



class Cember extends Sekil{
  double yaricap;
  
  Cember(this.yaricap);

  @override
  double alanHesapla() {
    return 3.14 * yaricap * yaricap.toDouble();
  }


  @override
  double cevreHesapla(){
    return 2 * 3.14 * yaricap;
  }

  
  @override
  void selamla() {
    print("Ben Çember sınıfındanım.");
}
}


// extends ile bir alt sınıfı sadece 1 üst sınıftan kalıtabiliyorduk. Ama IMPLEMENTS bize birden fazla sınıftan kalıtılabilme imkani verir. Bunun için de extends yerine implements kullanmamız ve sonrasına kalıtmak istediğimiz sınıf ya da sınıfları yazabiliriz. Bunu nasıl yapabiliriz ya da nedere kullanabiliriz.

// örneğin Hayvanlar diye bir abstract sınıf oluşturup bunu deneyelim

abstract class Hayvanlar{

  void ucabilenler();
  void kosabilenler();
  void yuzebilenler();
} 

// bu classı kullanmak istediğimizde ve kalıttığımızda aşağıdaki gibi tüm fonksiyonları alt classta kullanmak zorunda kalacağız o özellik bize ait olmasa bile:

/*
class Kopek extends Hayvanlar{


  @override
  void kosabilenler() {
    // köpek için uygun
  }

  @override
  void ucabilenler() {
    // köpek için uygun DEĞİL
  }

  @override
  void yuzebilenler() {
    // köpek için uygun 
  }

} 
*/


// Görüldüğü gibi ihtiyacı karşılamayan kötü bir kod yazmış olduk. Bunun yerine ihtiyacımız olan özellikleri alabilmemiz için ayrı ayrı abstract sınıflar oluşturup diğer programlama dillerinde interface dartta ise implements kullanabiliriz. Ayrıca implements extends ile de birlikte kullanılabili


abstract class IkiYasamlilar{

  void ikiyasamlilar();
}


abstract class Yuzebilenler{

  void yuzebilenler();
}


abstract class Kosabilenler{

  void kosabilenler();
}


abstract class Ucabilenler{

  void ucabilenler();
}


class Kopek implements Kosabilenler, Yuzebilenler {
  @override
  void kosabilenler() {
  }

  @override
  void yuzebilenler() {
  }
  
} // implements sayesinde ihtiyacım olan özelliklere sahip classlardan kalıtmış olduk bir örnek daha yapalım.


class Aksolotl implements Yuzebilenler, IkiYasamlilar{
  @override
  void yuzebilenler() {

  }
  
  @override
  void ikiyasamlilar() {

    }

}

class TuhafHayvan extends Hayvanlar implements IkiYasamlilar{
  @override
  void ikiyasamlilar() { // normlade hayvanlar class ında ikiyasamlılar yoktu ama bunu ikiyasamlılar classından implement ettik bu sayede kullanabiliyoruz
    
  }

  @override
  void kosabilenler() {
  
  }

  @override
  void ucabilenler() {
   
  }

  @override
  void yuzebilenler() {

  }


}



// static bize şunu sağlar. Biz classların değişken ve method(fonksiyon) larına ulaşmak istediğimde mevburen o classtan bir nesne oluşturmam ve bu nesneler referansı ile o özellikleri çapırmama gerekiyordu. Ama bunu yapmak zorunda değiliz. Biz nesneler üzerinde erişebildiğimiz özelliklere instance variable diyoruz. Static ile doğrudan erişebildiğimiz değişkenlere ise class veriable diyoruz. Şimdi söylediğimizi koda dökelim.

class Matematik {
  late int sayi1 ; // late komutu değer sonrasında verilecek demek anlamında kullanılıyor
  late int sayi2;
  static  double pi = 3.14;

Matematik(this.sayi1, this.sayi2); // static olmayan yani instance olan değişkenler için classlarda main de nesne olulturmam gerekicek

  void toplama(){
    print(sayi1 + sayi2); 
  }

  static void cikarmaBilgilendirme () {
   
    print("Çıkarma iişlemi bir sayıdan diğer sayını eksiltilmesi ile gerçekleşir.");
  }




 // instance veriablelar static variabllar içinde  
}


//IMMUTABLE - DEĞİŞMEZ 

// Bir değişken oluşturduktan sonra o değişkenin değerini değiştirebiliriz.

/*
var str = "Sudenaz";
str  = "Sudenaz Kalaycık"; // burada str nin değerini değiştirmiş olduk.
*/


// diyelim ki ben bu değişkenin değiştirilememesini istiyorum o zaman Final ve Constant kullanmam gerekicek. 




final String str2 = "Sude";
//str2 = "Kalaycık" ; // dediğimde bana uyarı verecek ve final ve constant olan bir  değişkenin değerini değiştiremezsınız diyecek. Ve bu işlemi sistem gerçekleştirmeyecek.

const String str3 = "Merhaba";
//str3 = "Selamlar"; // yine final ile aynı hatayı aldık.
 


// const a sistem çalışmadan önce elimizde olan verileri atayabilirken
// final de bu önemli değildir.


// aynı zamanda final kullanarak oluşturduğumuz değişkenlerin değerleri aynı olsa da bellekte farklı yerler tuttuğu ve final da bellekteki yerleri kıyasladığı için herhangi bir eşitlik sorgusunda false değer verecektir.

// fakat const ta bu finalde olan gibi olmaz constta aynı değere sahip hep bir değişken oluştururuz ve aynı yapıya birden fazla isim de versek bu aynı bellekteki yere ait olacaktır. yani a = [1,2,3,4] , b = [1,2,3,4] ve c = [1,2,3,4] verdiğimzide her 3 değişken de tek bir bellekte tutulan [1,2,3,4] yapısını ifade edecektir. Bu nedenle yazarken bir hata almasak da bu şekilde aynı değere birden çok isim verirsek çıktıda hata almış oluruz.Bunun tam tersini yani aynı isme farklı değer atama işlemini de yapamadığımızdan bahsetmiştik.


// finada değer değiştiremesek de liste - array yapılarında add ile eleman ekleyebiliriz. Sonuçta bir yapının belleğini tutar ve bu durumda add işlemi bellek alanının dışında bir işlem olmadığı için ekleme işlemini gerçekleştirebiliriz. ****** Yani kısaca bellek adresini değiştirmeden yaptığımmız işlemleri final lı yapılarda kullanabiliyoruz

// constta bunu yapamayız kod yazarken hata almasakta consolda hata verecektir.

//canonicalized yapılarlar denir bunlara sadece değişkenlerde değil classlarda da kullanabiliriz 



class Student {
  final String name;
  final int ide;
  const Student(this.ide, this.name);
}



main(){

  // abstract sınıflarda bir nesne oluşturamayız!! Bu nedenle bunu yapamayız : 
  
  //Sekil sekil1 = Sekil();

  // ama alt sınıflar abstract sınıfı extends aldığı için üst sınıfın kimliğini kullanabildiğinden üst sınıf kimlikli alt sınıf objesi oluşturabiliriz. Yani: 

Sekil s1 = Kare(4);
print(s1.cevreHesapla());
print(s1.alanHesapla());
s1.selamla(); // selamla fonksiyonu void yani bir değer döndürmek yerine bir şeyleri bastıran bir ifade bu nedenle tekrar print kullanamayız.

print("*****************************");
Sekil s2 = Dikdortgen(5,6);
print(s2.cevreHesapla());
print(s2.alanHesapla());
s2.selamla();

print("*****************************");

Sekil s3 = Cember(2);
print(s3.cevreHesapla());
print(s3.alanHesapla());
s3.selamla();


// static kısmı

var sayi1 = Matematik(5, 5);
var sayi2 = Matematik(10, 10);
print(sayi2);
print(sayi1);
Matematik.pi; // burada pi bir static variable idi bu nedenle ulaşmak için bir nesne oluşturmama gerek kalmadan classı çağırarak özelliğe ulaşmış oldum.
print("pi sayısının değeri ${Matematik.pi}"); 


// Aynısını class fonksiyonları için de yapabiliriz.
Matematik.cikarmaBilgilendirme(); 
// bu sayede static ile tanımmlananlar nesnedne bağımsız olmuş oluyor.

//const List liste = [1,2,3,5];
// liste.add(5); // bunu yapamayız bize yazımda hata vermese de consolda hata verecektir.


   const  Student student =   Student( 1234584, "Sudiş");// burada tanımladık 
  //student.ide = 52; // bu ifade hata verir çünkü final ile tnaımlanış ve değeri atanmıştır.

  const Student student2 = Student( 1234584, "Sudiş");
  //var student3 = const Student( 1234584, "Sudiş");  // burada var kullandığım için bir dahaki  seferde student3 e değer verirsem bu kez if else sorgusunda farklı eşit değildir çıkacak konsolda çünkü artık bu başka bir ifade ama bunun da değerine  const dersek bu kez eşit çıkacaktır.


  //student3 =  const Student(1234584, "Sudiş");

  if (student == student2){
    print("eşit");
    } else {
      print("eşit değil");
  }

// burada çıktı eşit değil olacak çünkü bu sınıf oluşturulduğunda ikisi de final ile farklı bellek birimlerind tutuluyor. Final bellekteki değere değil bellekteki konuma bakar

//neden aynı değere sahip yapı birden fazla yer tutsun ki!
// bunun için de const kullanmamız gerek. bu durumda eşit ifadesini konsolda görüyor olacağız çünkü aynı bellek birimine bakacak const. Şimdi de bunu ile constta uygulamalı görelim. bunu yapmak için Student classının kurucu methoduna const ekledim ve mainde student nesnesinin basşına da const ekledim


}