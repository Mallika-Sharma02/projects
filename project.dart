import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp ({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count=0;
  void  increment(){
    setState((){
      count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title:"My Counter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home:Scaffold(
        body:Center(
          child:Text(
            count.toString(),
            style: TextStyle(fontSize: 30),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          increment();
        },child:Icon(Icons.add)),
      ),
    );
  }
}
