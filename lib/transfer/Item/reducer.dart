import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<PayeeState> buildReducer() {
  return asReducer(
    <Object, Reducer<PayeeState>>{
      PayeeAction.action: _onAction,
    },
  );
}

PayeeState _onAction(PayeeState state, Action action) {
  final PayeeState newState = state.clone();
  return newState;
}
