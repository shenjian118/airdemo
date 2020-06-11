import 'package:fish_redux/fish_redux.dart';
import 'package:airstardemo/network/dao.dart';
import 'action.dart';
import 'state.dart';

Reducer<TransferState> buildReducer() {
  return asReducer(
    <Object, Reducer<TransferState>>{
      TransferAction.requestPayeeList: _onRequestPayeeList,
    },
  );
}

TransferState _onRequestPayeeList(TransferState state, Action action) {
  final list = Dao().getPayeeList();
  final notice = Dao().getNotice();
  final TransferState newState = state.clone()
    ..payeeList = list
    ..notice = notice;
  return newState;
}
