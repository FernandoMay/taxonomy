import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    var TEXT_BLACK = Colors.amber;
    var RED_LIGHT = Colors.blueAccent;
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text("Articles"),
            automaticallyImplyLeading: false,
            backgroundColor: RED_LIGHT,
            elevation: 0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my first article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my second article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my third article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my forth article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my fifth article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my sixth article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            constraints: BoxConstraints.expand(height: 80),
            child: Text(
              "This is my seventh article.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Divider(
            height: 0,
            color: TEXT_BLACK,
          ),
        ],
      ),
    );
  }
}
