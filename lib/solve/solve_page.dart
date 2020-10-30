import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_route_example/solve/solve_main.dart';

import 'solve_provider.dart';

class SolvePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SolveProvider(),
      child: MaterialApp(
        home: SolveMain(),
      ),
    );
  }
}
