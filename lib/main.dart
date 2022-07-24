import 'package:flutter/material.dart';
import 'package:tiktik/ui/msg_list_ui.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 150, bottom: 20, left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Demonstration of animation while Rounting",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, _PageTwo());
                  Navigator.of(context).push(CustomPageRoute(
                    child: SecondPage(),
                    direction: AxisDirection.down,
                  ));
                },
                child: const Text('Call page two from #TOP'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, _PageTwo());
                  Navigator.of(context).push(CustomPageRoute(
                    child: SecondPage(),
                    direction: AxisDirection.up,
                  ));
                },
                child: const Text('Call page two from #BOTTOM'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, _PageTwo());
                  Navigator.of(context).push(CustomPageRoute(
                    child: SecondPage(),
                    direction: AxisDirection.right,
                  ));
                },
                child: const Text('Call page two from #LEFT'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  //Navigator.push(context, _PageTwo());
                  Navigator.of(context).push(CustomPageRoute(
                    child: SecondPage(),
                    direction: AxisDirection.left,
                  ));
                },
                child: const Text('Call page two from #RIGHT'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(CustomPageRoute(
                    child: Tiktik(),
                    direction: AxisDirection.left,
                  ));
                },
                child: const Text('TIktik'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(CustomPageRoute(
                    child: MessageList(),
                    direction: AxisDirection.left,
                  ));
                },
                child: const Text('Message List'),
              ),
              const SizedBox(height: 40),
              const Text("Rahul shahare", textAlign: TextAlign.center),
              const Text("Founder @ Oceangreen Technology",
                  textAlign: TextAlign.center),
            ],
          ),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is second page"),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                //Navigator.push(context, _PageTwo());
                Navigator.pop(context);
              },
              child: const Text('Go back to #FirstPage'),
            ),
          ],
        ),
      ),
    );
  }
}

class Tiktik extends StatelessWidget {
  const Tiktik({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiktik'),
      ),
      body: Column(
        children: <Widget>[
          // Top section
          Container(
            height: 100.0,
            padding: EdgeInsets.only(bottom: 15.0),
            color: Colors.yellow[300],
          ),

          // Middle expanded
          Expanded(
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                Expanded(child: Container(color: Colors.green[300])),
                Container(
                  width: 100.0,
                  color: Colors.red[300],
                )
              ])),

          // Bottom Section
          Container(height: 80.0, color: Colors.blue[300]),
        ],
      ),
    );
  }
}
