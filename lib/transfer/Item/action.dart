import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum PayeeAction { action }

class PayeeActionCreator {
  static Action onAction() {
    return const Action(PayeeAction.action);
  }
}
