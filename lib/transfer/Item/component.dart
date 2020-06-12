import 'package:fish_redux/fish_redux.dart';

import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class PayeeComponent extends Component<PayeeState> {
  PayeeComponent()
      : super(
//            effect: buildEffect(),
          reducer: buildReducer(),
          view: buildView,
          dependencies:
              Dependencies<PayeeState>(adapter: null, slots: <String, Dependent<PayeeState>>{}),
        );
}
