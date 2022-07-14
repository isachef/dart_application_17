void main(List<String> args) {
  Phone dava = Phone(12, 'samsung', 120);
  dava = Phone.second(num: 12, model: "sum");
  dava.print_data();
  Phone pop = Phone(12, 'iphone', 120);
  pop.print_data();
  Phone top = Phone(12, 'htc', 120);

  top.print_data();
  top.sendMessage('0999882233');
  top.receiveCall('loli', '0705433421');
}

class Phone {
  int? num;
  String? model;
  int? weight;

  Phone(
    this.num,
    this.model,
    this.weight,
  );
  Phone.second({
    required this.num,
    required this.model,
  });
  print_data() {
    print('number=$num,model=$model,weight=$weight');
  }

  receiveCall(String name, String num) {
    print('Звонит: $name $num');
  }

  sendMessage(String number) {
    print('на этот номер отправится сообщение :$number');
  }
}
