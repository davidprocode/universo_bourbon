import 'package:flutter/material.dart';
import 'package:universo_bourbon/Components/feed_body.dart';
import 'package:universo_bourbon/Pages/Tabs/tab_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        bottom: const TabBar(tabs: [
          Tab(
            text: "Feed",
            icon: Icon(Icons.feed_outlined),
          ),
          Tab(
            text: "Tab 02",
            icon: Icon(Icons.outlet_outlined),
          ),
          Tab(
            text: "Tab 03",
            icon: Icon(Icons.output_outlined),
          ),
        ]),
      ),
      body: const TabBarView(children: <Widget>[
        FeedBody(),
        TabBody(title: "You are on Tab 02"),
        TabBody(title: "You are on Tab 03"),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
