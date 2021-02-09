import 'package:flutter/material.dart';
import 'package:profile_app/src/pages/welcomePage/welcomePage_view.dart';
import 'package:profile_app/src/pages/welcomePage/welcomePage_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeViewModel(),
      child: MaterialApp(
        home: WelcomeView(),
      ),
    );
  }
}
