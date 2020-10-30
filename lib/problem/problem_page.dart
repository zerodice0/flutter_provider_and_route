import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_route_example/problem/problem_main.dart';

import 'problem_provider.dart';

class ProblemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProblemProvider(),
      child: ProblemMain(),
    );
  }
}
