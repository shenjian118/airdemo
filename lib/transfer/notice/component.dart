import 'package:fish_redux/fish_redux.dart';

import 'state.dart';
import 'view.dart';

export 'state.dart';

class NoticeComponent extends Component<NoticeState> {
  NoticeComponent()
      : super(
            view: buildView,
            dependencies: Dependencies<NoticeState>(
                adapter: null,
                slots: <String, Dependent<NoticeState>>{
                }),);

}
