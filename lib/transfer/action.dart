import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum TransferAction { requestPayeeList }

class TransferActionCreator {
  static Action onRequestPayeeList() {
    return Action(TransferAction.requestPayeeList);
  }
}
