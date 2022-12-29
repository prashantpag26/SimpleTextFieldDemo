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
        primarySwatch: Colors.blue,
      ),
      home: TextFieldScreen(),
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final teFirstValue = TextEditingController();
  final teSecoundValue = TextEditingController();
  String answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          "Two Value Addition",
          style: TextStyle(color: Colors.green,wordSpacing: 3,fontSize: 30),
        ),
        Container(
          padding: EdgeInsets.all(32),
          child: TextField(
            controller: teFirstValue,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter first number"),
          ),
        ),
        Container(
          padding: EdgeInsets.all(32),
          child: TextField(
            controller: teSecoundValue,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: "Enter secound number"),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(32),
          child: TextButton(
            child: Text("Calculate", style: TextStyle(color: Colors.white)),
            onPressed: () {
              setState(() {
                answer = (double.parse(teFirstValue.text.toString())+double.parse(teSecoundValue.text.toString())).toString();

              });
            },
            style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
          ),
        ),
        Text(answer),
      ],
    ));
  }
}
