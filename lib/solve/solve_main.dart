import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/counter_provider.dart';
import 'solve_sub.dart';

class SolveMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Solve Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You can using provider on this page."),
            Text("${provider.getCounter()}"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SolveSub(),
                  ),
                );
              },
              child: Text("Show _count value of provider on SolveSub page."),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.addCounter(),
        child: Icon(Icons.add),
      ),
    );
  }
}
