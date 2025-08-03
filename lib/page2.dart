import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final TextEditingController _controller = TextEditingController();
  int num = 0;

  @override
  void initState() {
    super.initState();
    _controller.text = num.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(controller: _controller, textAlign: TextAlign.center),
          ElevatedButton(
            onPressed: () {
              setState(() {
                num++;
                _controller.text = num.toString();
              });
            },
            child: Text('+'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, _controller.text);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
