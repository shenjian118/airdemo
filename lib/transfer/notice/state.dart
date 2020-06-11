import 'package:fish_redux/fish_redux.dart';

class NoticeState implements Cloneable<NoticeState> {
  String notice;

  @override
  NoticeState clone() {
    return NoticeState()..notice = notice;
  }
}
