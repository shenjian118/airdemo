import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(PayeeState state, Dispatch dispatch, ViewService viewService) {
  return Container(
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(width: 30),
        Text(state.name),
        SizedBox(width: 80),
        Text(state.phone),
        SizedBox(width: 30),
      ],
    ),
  );
}
