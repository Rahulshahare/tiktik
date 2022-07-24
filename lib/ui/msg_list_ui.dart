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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Message List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Divider(),
            _buildMessage(),
          ],
        ),
      ),
    );
  }
}
