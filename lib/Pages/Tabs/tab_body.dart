import 'package:flutter/material.dart';

class TabBody extends StatefulWidget {
  const TabBody({super.key, required this.title});

  final String title;

  @override
  State<TabBody> createState() => TabBodyState();
}

class TabBodyState extends State<TabBody> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(widget.title));
  }
}
