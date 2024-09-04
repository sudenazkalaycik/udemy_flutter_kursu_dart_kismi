void main (){

  //FONKSİYONLAR : 
//  fonksiyonIsmi() {} şeklinde void mainin dışında oluştururuz fonsiyonları. Sonrsında ise fonksiyon ismini(); şeklinde void mainin içine yazarız. Parametreler () içine işlem {} içine yazılır.


// zorunlu değil fakat fonksiyonların başlarına tanımlarken onun tipini de yazmak daha doğru olacaktır. ÖR: int sayiToplama() {}   gibi

 
// returnsüz yani bir şey döndürmeyen fonksiyonların başına da void yazarız. Ör: void main() {} main fonksiyonu herhangibir şey döndürmez. :))



//fonksiyonları kısa yazabiliriz bunun adı fat arrow'dur. bunu şu şekilde yaparız: Önce normal sonra fat arrow ile yazalım

int cikarmaIslemi(int s1, int s2) {
  return s1 - s2;
}

int  carpmaIslemi(int s1, int s2) => s1 * s2; 
// yani verilenleri al ve bunlarla bunu yap demek istiyor
 

 // yukarıda yazdığımız fonksiyon türleri required parametreli fonksiyon yani parametrenin girilen sırayla hepsine değer verilmesi ile çalışan bir fonksiyon turu

 // optional parametreli fonksiyon ise parametreler tanımlanırken ör: [sayi3] yazarsak bu sayı için fonskiyon kullanılırken giriş yapılmayabilir. Ama bu durumda hata alacağız bu nedenle bunların değeri girilmemesi durumunda default olarak ne değerde olması gerektiğini belirtmemiz gerekiyor. ör: int sayiToplami =( sayi1, [sayi2 = 0, sayi3 = 1]) {} burada sayi1 değeri kesinlikle verilmeli ama sayi2 ve sayi3 girilmese de olur. Bu durumda 0 ve 1 değerleri döndürecekler ama değer girişi yapılırsa verilen değeri döndürecekler.


 // opsiyonel named paremetreli fonksiyonda ise isteğe bağlı giriş ve isteğe bağlı sırada giriş için o değerleri {} içinde yazarız. Fonksiyonu kulanırken de istedğimiz değişkene değer verirken ismini de yazarız. Ör:

  sayyilariTopla (say1,{say2 = 0, say3 = 0, say4 = 0}) { 
  print(say1 + say2 + say3 +say4) ; // opsiyon dışı yazmak istersem bunu başa yerleştirmem gerekir

  // void mainin içinde de şu şekilde yazmalıyız eğer değer girmek istesek
 }
  sayyilariTopla (3, say2: 5, say4:4);// yine default değerler



// class içidendeki atama bekleyen  değişkenlerinbaşına later yazarsak sonra buna değer vereceğimizi anlar

}