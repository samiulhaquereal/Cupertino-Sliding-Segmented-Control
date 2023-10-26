import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? _sliding = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoSlidingSegmentedControl(
        onValueChanged: (int? newvalue) {
          setState(() {
            _sliding = newvalue;
          });
        },
        groupValue: _sliding,
        children: {
          0: Text('Text 0'),
          1: Text('Text 1'),
          2: Text('Text 2'),
        },
      ),
    );
  }
}
