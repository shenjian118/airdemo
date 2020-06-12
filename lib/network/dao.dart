import 'package:airstardemo/models/transfer_payee.dart';

class Dao {
  factory Dao() => instance;

  Dao._();

  static final Dao instance = Dao._();

  List<TransferPayee> getPayeeList() {
    return [
      TransferPayee(name: 'payee1', phone: '13912341111'),
      TransferPayee(name: 'payee2', phone: '13912342222'),
      TransferPayee(name: 'payee3', phone: '13912343333'),
      TransferPayee(name: 'payee4', phone: '13912344444'),
      TransferPayee(name: 'payee5', phone: '13912345555'),
      TransferPayee(name: 'payee6', phone: '13912346666'),
      TransferPayee(name: 'payee7', phone: '13912347777'),
      TransferPayee(name: 'payee8', phone: '13912341111'),
      TransferPayee(name: 'payee9', phone: '13912342222'),
      TransferPayee(name: 'payee10', phone: '13912343333'),
      TransferPayee(name: 'payee11', phone: '13912344444'),
      TransferPayee(name: 'payee12', phone: '13912345555'),
      TransferPayee(name: 'payee13', phone: '13912346666'),
      TransferPayee(name: 'payee14', phone: '13912347777'),
    ];
  }

  String getNotice() {
    return 'just a notice';
  }
}
