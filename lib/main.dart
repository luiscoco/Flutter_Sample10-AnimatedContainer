import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AnimatedContainer Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isContainerExpanded = false;
  double _containerWidth = 100.0;
  double _containerHeight = 100.0;
  Color _containerColor = Colors.blue;

  void _toggleContainer() {
    setState(() {
      _isContainerExpanded = !_isContainerExpanded;
      if (_isContainerExpanded) {
        _containerWidth = 200.0;
        _containerHeight = 200.0;
        _containerColor = Colors.red;
      } else {
        _containerWidth = 100.0;
        _containerHeight = 100.0;
        _containerColor = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer Demo'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _toggleContainer,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: _containerWidth,
            height: _containerHeight,
            color: _containerColor,
            curve: Curves.easeInOut,
            child: Center(
              child: Text(
                'Tap to toggle',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
