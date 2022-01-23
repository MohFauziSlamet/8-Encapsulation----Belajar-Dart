import 'dart:io';
import 'package:Dart_Encapsulasi/persegi_panjang.dart';

void main(List<String> arguments) {
  /* kotak1 dan kotak2 merupakan nickName yang akan dibuat sebuah
  objek yang diambil dari rancangan class persegiPanjang */
  persegiPanjang kotak1, kotak2;

  kotak1 = new persegiPanjang();
  /* new artinya membuat sebuah
  objek dari class persegi panjang
  jadi  kotak1 = new persegiPanjang(); merupakan sebuah" objek"*/

  //kotak1.panjang merupakan field yang dimiliki oleh "objek" kotak1
  print('-- Persegi Panjang 1 --'); //inputan user
  stdout.write('Masukan panjang 1 : ');
  kotak1.setPanjang(double.tryParse(stdin.readLineSync()));
  stdout.write('Masukan lebar 1   : ');
  kotak1.lebar = double.tryParse(stdin.readLineSync());
  print('\n');

  kotak2 = persegiPanjang(); //keyword new tidak ditulis , sama aja

  print('-- Persegi Panjang 2 --'); //inputan user
  stdout.write('Masukan panjang 2 : ');
  kotak2.setPanjang(double.tryParse(stdin.readLineSync()));
  stdout.write('Masukan lebar2    : ');
  kotak2.lebar = double.tryParse(stdin.readLineSync());
  print('\n');

  print('Hasil dari kotak 1 = ' +
      kotak1.hasil.toString() +
      ' + ' 'hasil dari kotak 2 = ' +
      kotak2.hasil.toString());
  stdout.write('Hasil total luas kedua kotak adalah : ');
  print(kotak1.luas + kotak2.luas); //luas langsung dihitung tanpa penampung
  print('\n');

  print('-------------------------------------------');
  stdout.write('Nilai dari panjang kotak1 :' +
      kotak1.getPanjang().toString() +
      '\n'); // menggunakan methode getter setter biasa
  stdout.write('Nilai dari panjang kotak2 :' +
      kotak2.getPanjang().toString() +
      '\n'); // menggunakan methode getter setter biasa

  stdout.write('Nilai dari lebar kotak1   :' +
      kotak1.lebar.toString() +
      '\n'); // menggunakan methode properti getter setter
  stdout.write('Nilai dari lebar kotak2   :' +
      kotak2.lebar.toString() +
      '\n'); // menggunakan methode properti getter setter
}
