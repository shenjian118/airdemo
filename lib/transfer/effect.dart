import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<TransferState> buildEffect() {
  return combineEffects(<Object, Effect<TransferState>>{
    Lifecycle.initState: _initState,
  });
}

void _initState(Action action, Context<TransferState> ctx) {
  ctx.dispatch(TransferActionCreator.onRequestPayeeList());
}
