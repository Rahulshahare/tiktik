import 'package:flutter/material.dart';
import 'custom_page_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RoutesExample(),
    );
  }
}

class RoutesExample extends StatelessWidget {
  const RoutesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context, _PageTwo());
            Navigator.of(context).push(CustomPageRoute(
              child: SecondPage(),
              //direction: AxisDirection.up,
            ));
          },
          child: const Text('Go to page two'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigator.push(context, _PageTwo());
            Navigator.pop(context);
          },
          child: const Text('FirstPage'),
        ),
      ),
    );
  }
}
