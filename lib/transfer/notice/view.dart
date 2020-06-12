import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(NoticeState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 50,
    color: Colors.cyan,
    child: Container(
      child: Center(child: Text(state.notice)),
    ),
  );
}
