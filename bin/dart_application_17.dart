import 'dart:io';
import 'class.dart';
import '../../dart_application_16/bin/dart_application_16.dart';

void main() {
  User isa = User();
  if (isa.check_login_and_password('isa@gmail', 'pop_', 'pop_') == true) {
    print('all good\nyou can play:');
    Buy lop = Buy();
    print(
        '1) Хотите обменять другую валюту на сом?\n2) Хотите обменять сом на другую валюту?');
    int n = int.parse(stdin.readLineSync()!);
    if (n == 1) {
      lop.changeSell();
    } else if (n == 2) {
      lop.changeBuy();
    } else {
      print('wrong number');
    }
  }
}
