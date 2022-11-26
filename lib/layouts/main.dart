import 'package:flutter/material.dart';
import 'package:selfsea/layouts/drawer/main.dart';

class Layout extends StatefulWidget {
  final AppBar? appBar;
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  const Layout(
      {Key? key, required this.body, this.appBar, this.floatingActionButton})
      : super(key: key);
  // const Layout(
  //     {Key:key,
  //     this.appBar?,
  //     required body,
  //     FloatingActionButton? floatingActionButton}): super(key:key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widget.appBar,
        body: widget.body,
        floatingActionButton: widget.floatingActionButton,
        drawer: const Drawer(
            child: DrawerDisplayer() // Populate the Drawer in the next step.
            ));
  }
}
