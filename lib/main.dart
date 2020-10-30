import 'package:flutter/material.dart';

import 'problem/problem_page.dart';
import 'solve/solve_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider Route Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            """
              This page is route page because created by MaterialApp.
              You can move to problemPage and solvePage
              by press the floating action buttons.
            """,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProblemPage(),
                ),
              );
            },
            heroTag: "Problem",
            child: Text(
              "Problem",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SolvePage(),
                ),
              );
            },
            heroTag: "Solve",
            child: Text(
              "Solve",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          )
        ],
      ),
    );
  }
}
