import 'package:flutter/material.dart';
import 'CustomWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyHomePage(title: 'this is my home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  bool isNoble(int auto) => true;

  var say = (str){
    print(str);
  };

  var data1 = Future.delayed(Duration(seconds: 2),(){
    throw AssertionError("Error");
  }).then((value) => {
    print(value)
  }).catchError((onError){
    print(onError);
  }).whenComplete(() => {

  });

  @override
  void initState() {
    print("main_initState");
    super.initState();
  }

  @override
  void didChangeDependencies() {
    print("main_didChangeDependencies");
    super.didChangeDependencies();
  }

  @override
  void reassemble() {
    print("main_reassemble");
    super.reassemble();
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    print("main_didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print("main_deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("main_dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("main_build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           TextButton(onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) {
               return TopBoxA();
             }));
           }, child: Text("打开新页面"))
          ],
        ),
      ),
    );
  }
}
