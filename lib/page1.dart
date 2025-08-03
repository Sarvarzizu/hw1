import 'package:flutter/material.dart';
import 'package:hw1/page2.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: Text(
              text.isEmpty ? '0' : text,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              String? result = await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
              if (result != null) {
                setState(() {
                  text = result;
                });
              }
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
