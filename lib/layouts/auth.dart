import 'package:flutter/material.dart';

class AuthLayout extends StatefulWidget {
  final SingleChildScrollView body;

  const AuthLayout(this.body, {super.key});

  @override
  State<AuthLayout> createState() => _AuthLayoutState();
}

class _AuthLayoutState extends State<AuthLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: widget.body);
  }
}
