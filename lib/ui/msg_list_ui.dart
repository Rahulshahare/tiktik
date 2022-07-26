import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  const MessageList({Key? key}) : super(key: key);

  Widget _buildMessage() {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const Icon(
            Icons.people,
            size: 70,
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mr. Abcd Xyz',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'package:flutter/src/widgets/text.dart',
                  style: TextStyle(color: Colors.black26),
                ),
              ],
            ),
          ),
          const Text(
            '3 min ago',
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
    );
  }

  Widget _reBuildMessage() {
    return Expanded(
        child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
          Expanded(child: Container(color: Colors.green[300])),
          Container(
            width: 100.0,
            color: Colors.red[300],
          )
        ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            for (var i = 0; i < 5; i++)
              GestureDetector(
                onTap: () => print('click'),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 100.0,
                      height: 10.0,
                      color: Colors.red[300],
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.green,
                        height: 10.0,
                      ),
                    ),
                    Container(
                      width: 100.0,
                      height: 10.0,
                      color: Colors.yellow,
                    )
                  ],
                ),
              ),
            Divider(),
            Text('Here trying to create a list of messages and its layout'),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
            Divider(),
            _buildMessage(),
          ],
        ),
      ),
    );
  }
}
