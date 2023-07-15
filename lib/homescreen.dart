import 'package:flutter/material.dart';

import 'mylist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.view_headline),
        title: Text('long List with listview'),
      ),
      //
      body: SafeArea(child: MyList()),
    );
  }
}
