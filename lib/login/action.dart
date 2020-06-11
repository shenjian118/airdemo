import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction {
  action,
  login,
  register,
}

class LoginActionCreator {
  static Action onAction() {
    return const Action(LoginAction.action);
  }

  static Action onLogin() {
    return Action(LoginAction.login);
  }

  static Action onRegister() {
    return Action(LoginAction.register);
  }
}
