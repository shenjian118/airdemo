import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  final context = viewService.context;
  final mediaQueryData = MediaQuery.of(context);
  return Scaffold(
    body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_default.png'),
            fit: BoxFit.fill,
          ),
        ),
        height: mediaQueryData.size.height,
        width: mediaQueryData.size.width,
      ),
    ),
  );
}
