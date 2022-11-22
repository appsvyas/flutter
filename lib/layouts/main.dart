import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Layout body;

  const Layout(this.body, {super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: widget.body);
  }
}
