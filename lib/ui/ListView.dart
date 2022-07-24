import 'package:flutter/material.dart';

class ListViewExperiment extends StatelessWidget {
  const ListViewExperiment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Experiment'),
      ),
      body: const BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  const BodyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      for (var i = 0; i < 10; i++) _yellowContainer(),
      _yellowContainer(),
      Divider(),
      Container(
        color: Colors.yellow,
        height: 70.0,
      ),
      Divider(),
    ],
  );
}

class _yellowContainer extends StatelessWidget {
  const _yellowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 70.0,
    );
  }
}
