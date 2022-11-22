import 'package:flutter/material.dart';
import 'routes/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var systemRouter = SystemRouter();

    return MaterialApp.router(
      routerConfig: systemRouter.get(),
    );
  }
}
