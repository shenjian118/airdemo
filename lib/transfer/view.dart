import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';

Widget buildView(TransferState state, Dispatch dispatch, ViewService viewService) {
  final adapter = viewService.buildAdapter();
  final notice = viewService.buildComponent('notice');

  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.cyan,
      title: const Text('payee list'),
    ),
    body: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: notice,
        ),
        SizedBox(height: 50),
        Container(
          height: 500,
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: adapter.itemBuilder,
            itemCount: adapter.itemCount,
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Add',
      child: const Icon(Icons.add),
    ),
  );
}
