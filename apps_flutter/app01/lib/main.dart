import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Hello!"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 17, 207),
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: const Center(
          child: Text("Olá, mundo!",
              style: TextStyle(
                fontSize: 45,
                color: Color.fromARGB(255, 3, 17, 207),
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decorationStyle: TextDecorationStyle.dashed,
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromARGB(255, 89, 91, 201),
        child: const Icon(Icons.abc),
      ),
    );
  }
}
