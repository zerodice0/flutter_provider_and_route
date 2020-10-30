import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'problem_provider.dart';

class ProblemSub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProblemProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${provider.getCounter()}"),
          Text(
            """
                This page throw exception
                because can't find ProblemProvider from BuildContext.
                Check Flutter Inspector on your IDE.,
                You can find that route of ProblemSub is MainPage.,
              """,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
