import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<PayeeState> buildEffect() {
  return combineEffects(<Object, Effect<PayeeState>>{
    PayeeAction.action: _onAction,
  });
}

void _onAction(Action action, Context<PayeeState> ctx) {
}
