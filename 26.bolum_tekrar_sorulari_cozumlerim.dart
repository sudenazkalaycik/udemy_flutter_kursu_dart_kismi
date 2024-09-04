
main() {
  // Soru 1:
  double a = 10.2, b = 20.5, c = 30.25;
  double ortalama = (a + b + c )/3;
  print(ortalama);
  
// Soru 2:
 print("*******************************");
// eşkenar ikizkenar çeşitkenar

int k1 = 10, k2= 10, k3 = 10;

if ((k1 == k2) && (k2 == k3) && (k1 == k3)){ // çoklu sorgu yaparken parantez kullanmamız gerekiyor
  print("eşkenar");
}
else if((k1 == k2) ^ (k1 == k3) ^ (k2 == k3) ){ // XOR operatörü yalnızca 1 tanesi doğru ise doğrudur.
  print("ikizkenar");
}
else{
  print("çeşitkenar");
}

print("*************************");
// Soru: 3

int vize = 100;
int finaL = 40;

double ort = (vize*40) / 100 + (finaL*60) /100;

if (ort >= 50){
  print("Geçtiniz");
}else{
  print("Kaldınız");
}

print("*******************");

// Soru : 4
String ismim = "Sudenaz";

for (int ii = 0; ii < 5; ii++) {
  print(ismim);
}

print("----");

int count = 0;
while(count < 6){
  print(ismim);
  count++ ;
}


print("----");

count = 0; // countu en son while kullandı bu yüzden şu anki değeri 0 değil. Bundan dolayı countı günzellememiz gerek 0 olarak yoksa sadece 1 kez çıktı alıız do while da o da do'nun çıktısı olur


do{
  print(ismim);
  count++;
}
while(count < 5);



// Soru : 5

for (int iii = 1; iii < 100; iii++) {
  if(iii % 15 == 0){
    print(iii*iii);
  }
}

print("*******************");
// Soru 6

int istnenSayi = 4;
int sonuc = 1;

for(int b = istnenSayi; b > 0; b--){
  sonuc *= b; 
}

print(sonuc);




}



