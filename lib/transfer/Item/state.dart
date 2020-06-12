import 'package:fish_redux/fish_redux.dart';

class PayeeState implements Cloneable<PayeeState> {
  String name;
  String phone;

  PayeeState({this.name, this.phone});

  @override
  PayeeState clone() {
    return PayeeState()
      ..name = name
      ..phone = phone;
  }
}

PayeeState initState(Map<String, dynamic> args) {
  return PayeeState();
}
