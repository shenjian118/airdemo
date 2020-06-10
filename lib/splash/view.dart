import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide Action;

import 'action.dart';
import 'state.dart';

Widget buildView(SplashState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Container(
        height: 120,
        width: 120,
        child: Image.asset('assets/images/loading_blue_icon.gif'),
      ),
    ),
  );
}
