import 'dart:async';
import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'action.dart';
import 'state.dart';

Effect<SplashState> buildEffect() {
  return combineEffects(<Object, Effect<SplashState>>{
    Lifecycle.initState: _initState,
    SplashAction.action: _onAction,

  });
}

void _onAction(Action action, Context<SplashState> ctx) {
}

void _initState(Action action, Context<SplashState> ctx) {
  _startTimer(ctx.context, (){
     Navigator.pushReplacementNamed(ctx.context, 'login_page');
  });
}

void _startTimer(context,Function callback) {
  final _duration = Duration(milliseconds: 3000);
  Timer(_duration, () => callback());
}