import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var tabs = [
      Tab(icon: Icon(Icons.chat), text: 'Chat',),
      Tab(icon: Icon(Icons.add_a_photo_outlined), text: 'Cam',),
      Tab(icon: Icon(Icons.cabin), text: 'Call',),

    ];

    var tabpage = [

      Center(child: Icon(Icons.chat, size: 65.0, color: Colors.green)),
      Center(child: Icon(Icons.chat, size: 65.0, color: Colors.green)),

      Center(child: Icon(Icons.chat, size: 65.0, color: Colors.green)),


    ];
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: tabs,
          ),
        ),
        body: TabBarView(children: tabpage),
      ),

    );
  }

}


