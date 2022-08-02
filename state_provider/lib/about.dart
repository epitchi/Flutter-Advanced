import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_provider/drawer_menu.dart';
import 'package:state_provider/model/ui.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class About extends StatelessWidget {
  String text = loremIpsum(paragraphs: 3, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        backgroundColor: Colors.teal,
      ),
      drawer: const DrawerMenu(),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return RichText(
              text: TextSpan(
                text: text,
                style:
                    TextStyle(fontSize: ui.fontSize, color: Colors.lightBlue),
              ),
            );
          },
        ),
      ),
    );
  }
}