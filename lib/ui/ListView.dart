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
    children: const <Widget>[
      ListTile(
        textColor: Colors.blue,
        leading: Icon(Icons.verified_user),
        title: Text('FLUTTER'),
        subtitle: Text(
          'ListViewExperiment',
          style: TextStyle(fontSize: 10),
        ),
        trailing: Text('3 mints ago'),
      ),
    ],
  );
}
