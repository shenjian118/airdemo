import 'package:fish_redux/fish_redux.dart';

import 'adapter.dart';
import 'effect.dart';
import 'notice/component.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class TransferPage extends Page<TransferState, Map<String, dynamic>> {
  TransferPage()
      : super(
          initState: initState,
          effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies: Dependencies<TransferState>(
              adapter: NoneConn<TransferState>() + TransferAdapter(),
              slots: <String, Dependent<TransferState>>{
                'notice': NoticeConnector() + NoticeComponent()
              }),
          middleware: <Middleware<TransferState>>[],
        );
}
