import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';

class SolveSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            """
              counter: ${provider.getCounter()}

              This page throw exception
              because can't find ProblemProvider from BuildContext.
              Check Flutter Inspector on your IDE.,
              You can find that route of ProblemSub is MainPage.,
            """,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text("Exit"),
      ),
    );
  }
}
