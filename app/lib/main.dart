import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my app",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _initcontroller;

  @override
  void initState() {
    super.initState();
    _initcontroller = TextEditingController();
    //  _initcontroller = "Ahmad Raza";
  }

  @override
  void dispose() {
    _initcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter TexField"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            autocorrect: true,
            controller: _initcontroller,
            enableInteractiveSelection: true,
            enableSuggestions: true,
            keyboardType: TextInputType.name,
            obscureText: true, // for hide text as like password
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              border: OutlineInputBorder(
                borderSide: BorderSide(),
                borderRadius: BorderRadius.circular(20.0),
              ),
              fillColor: Colors.green[50],
              filled: true, // for filed like color
              hintText: "Enter Name",
              hintStyle: TextStyle(color: Colors.blueAccent),
              icon: Icon(Icons.person),
              labelText: "Enter Name",
              labelStyle: TextStyle(color: Colors.pink),
              // prefixIcon: Icon(Icons.person),
              // suffixIcon: Icon(Icons.person),
              // prefixText: "Enter Name prefixText",
              // suffixText: "Enter Name suffixText",
            ),

            onChanged: (Value) => print(Value),
          ),
        ),
      ),
      floatingActionButton: IconButton(
        icon: Icon(Icons.add),
        onPressed: () {
          // print("print value of $_initcontroller");
          print(_initcontroller.text);
        },
      ),
    );
  }
}
