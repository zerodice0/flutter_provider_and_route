import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_route_example/problem/problem_sub.dart';

import '../provider/counter_provider.dart';

class ProblemMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Problem Page"),
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
                    builder: (context) => ProblemSub(),
                  ),
                );
              },
              child: Text("Show _count value of provider on ProblemSub page."),
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
