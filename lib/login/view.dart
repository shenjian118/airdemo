import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(LoginState state, Dispatch dispatch, ViewService viewService) {
  final context = viewService.context;
  final mediaQueryData = MediaQuery.of(context);
  return Scaffold(
    body: SafeArea(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_default.png'),
                fit: BoxFit.fill,
              ),
            ),
            height: mediaQueryData.size.height,
            width: mediaQueryData.size.width,
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            height: 150,
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  RaisedButton(
                    onPressed: () => dispatch(LoginActionCreator.onLogin()),
                    color: Colors.blue[500],
                    child: Container(width: 150, child: Center(child: Text('登录'))),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.blue[500],
                    child: Container(width: 150, child: Center(child: Text('注册'))),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
