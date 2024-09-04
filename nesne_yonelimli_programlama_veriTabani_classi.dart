import 'dart:math';

class VeriTabaniIslemleri{
  String _kullaniciAdi = "Sudenaz" ; 
  String _sifre = "123456789" ;

  bool baglan() {
    if(_kullaniciAdi  == "Sudenaz" &&  _sifre == "123456789"){  // şu  an  gizli oldukları için class dısında bu gizli değişkenlere son kullanıcı erişemeyecek
      return true;
  }
  else{
    return false;
  }
  }

  bool _internetVarMi(){ // random rast gele değer döndürecek
    if (Random().nextBool()){ // internet varsa  çalışsın
      return true;
    }
    else { // internet yoksa çalışacak
      return false;
    }
  } // bu methodu da private yapıyorum çünkü kullanıcının bu donksiyonu kullanmaya ihtiyacı yok. Bu sorgu bize kodu yazana lazım sadece



VeriTabaniIslemleri() {}

VeriTabaniIslemleri.loginWithNameandPassword(String kullaniciAdi, String sifre ){}


}

