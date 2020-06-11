import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(TransferState state, Dispatch dispatch, ViewService viewService) {

  List<Widget> _buildChildren() {
    return state.payeeList.map((payee) {
      return Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(payee.name),
            Text(payee.phone),
          ],
        ),
      );
    }).toList();
  }

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.cyan,
      title: const Text('ToDoList'),
    ),
    body: Column(
      children: <Widget>[
        viewService.buildComponent('notice'),
        ..._buildChildren(),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Add',
      child: const Icon(Icons.add),
    ),
  );


}
