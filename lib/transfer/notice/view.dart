import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(NoticeState state, Dispatch dispatch, ViewService viewService) {
  return Card(
    color: Colors.cyan,
    elevation: 0.2,
    child: Container(
      child: Text(state.notice),
    ),
  );
}
