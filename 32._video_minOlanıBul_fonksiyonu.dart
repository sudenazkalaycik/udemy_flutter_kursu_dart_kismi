// ödev :  iki sayıdan küçük olanı yazdıran fonksiyonu bir kısa bir uzun yazım ile yaz

void main() {

  print(minOlaniBl(2, -60));
  print(minOlaniBulKisa(20, 1));

}

int minOlaniBl(int s1, int s2){
  if (s1 > s2){
    return s2;
  }
    return s1; // zaten return oldduğu için else komutuna gerek yok
  
}

int minOlaniBulKisa(int s1, int s2) => s1 > s2 ? s2 : s1; 
