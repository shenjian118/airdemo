import 'package:airstardemo/models/transfer_payee.dart';
import 'package:airstardemo/transfer/Item/component.dart';
import 'package:airstardemo/transfer/Item/state.dart';
import 'package:fish_redux/fish_redux.dart';

import 'state.dart';

// ignore: deprecated_member_use
class TransferAdapter extends DynamicFlowAdapter<TransferState> {
  TransferAdapter()
      : super(
          pool: <String, Component<Object>>{
            'payee': PayeeComponent(),
          },
          connector: _TransferConnector(),
        );
}

class _TransferConnector extends ConnOp<TransferState, List<ItemBean>> {
  @override
  List<ItemBean> get(TransferState state) {
    if (state.payeeList.isNotEmpty) {
      return state.payeeList
          .map<ItemBean>((TransferPayee data) => ItemBean(
                'payee',
                PayeeState(name: data.name, phone: data.phone),
              ))
          .toList();
    } else {
      return <ItemBean>[];
    }
  }

  @override
  void set(TransferState state, List<ItemBean> items) {}

  @override
  subReducer(reducer) {
    // TODO: implement subReducer
    return super.subReducer(reducer);
  }
}
