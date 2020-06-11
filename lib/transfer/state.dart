import 'package:fish_redux/fish_redux.dart';
import 'package:airstardemo/models/transfer_payee.dart';
import 'notice/component.dart';

class TransferState implements Cloneable<TransferState> {
  List<TransferPayee> payeeList;
  String notice;

  @override
  TransferState clone() {
    return TransferState()
      ..payeeList = payeeList
      ..notice = notice;
  }
}

TransferState initState(Map<String, dynamic> args) {
  return TransferState();
}

class NoticeConnector extends ConnOp<TransferState, NoticeState> {
  @override
  NoticeState get(TransferState state) {
    return NoticeState()..notice = state.notice;
  }

  @override
  void set(TransferState state, NoticeState subState) {
    state..notice = subState.notice;
  }
}
