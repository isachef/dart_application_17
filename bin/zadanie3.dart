import 'dart:io';

void main() {
  Library kasym = Library();
  kasym.fio = 'lop L.P.';
  kasym.takeBook(null,['adventure','tolstoy']);
  List<Library> array = [];
  for (var i = 0; i < 3; i++) {
    array.add(Library());
  }
}

class Library {
  String fio = '';
  int number = 0;
  String faculty = '';
  String birth_day = '';
  int phone_number = 0;

  takeBook([
    int? taked_books,
    List<String>? books,
  ]) {
    if (taked_books != null) {
      print('$fio taked $taked_books books');
    }
    if (books != null) {
      stdout.write('$fio taked:');
      for (var i = 0; i < books.length; i++) {
        stdout.write(' ${books[i]}');
      }
    
    }
  }

  returnBook(List books) {
    if (books != null) {
      stdout.write('$fio returned:');
      for (var i = 0; i < books.length; i++) {
        stdout.write(' ${books[i]}');
      }
    }
  }
}
