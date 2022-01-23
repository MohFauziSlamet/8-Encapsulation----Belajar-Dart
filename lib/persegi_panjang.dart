class persegiPanjang {
  // merupakan field yang dimiliki oleh class persegiPanjang
  ///penambahan tanda under score membuat field menjadi privat
  double _panjang;
  double _lebar;

  /* menggunakan methode getter dan setter .
  methode get untuk menampilkan nilai yang dimiliki sebuah field ,
  methode set untuk mengubah nilai yang dimiliki oleh field.
  fungsi dari get dan set ini , agar field tidak bisa di akses dari luar lib
  */
  /*menggunakan void, karena setPanjang hanya mengubah value saja ,
  tidak mengembalikan apapun . disini menggunakn methode setter*/
  void setPanjang(double value) {
    if (value < 0) {
      value *= -1;
    }
    _panjang = value;
  }

  ///get panjang
  double getPanjang() {
    return _panjang;
  }

  /// menggunakan properti setter dan getter pada dart. beda dg methode setter getter yang diatas
  /// dan lebih sederhana penulisannya
  /// kalo get pada properti , tidak perlu menggunakan "parameter ()"
  /// penggunaan properti sama dengan penggunaan nama field , jadi lebih mudah dalam membaca dan penggunaan nama nya
  void set lebar(double value) {
    if (value < 0) {
      value *= -1;
    }
    _lebar = value;
  }

  double get lebar {
    return _lebar;
  }

  // merupakan methode yang dimiliki oleh class persegiPanjang
  // double hitungLuas() {
  //   return this._panjang * _lebar; //this bisa ditulis atau tidak gpp
  // }

  // alternatif lain dari hitungluas()
  // bisa membuat properti tanpa perlu ada field dalam sebuah class
  // get luas , properti untuk menghitung luas (panjang * lebar)
  double get luas => _panjang * _lebar;

  // bisa membuat properti tanpa perlu ada field dalam sebuah class
  // get hasil , properti untuk menampilkan hasil dari luas pada main
  double get hasil {
    return luas;
  }
}
