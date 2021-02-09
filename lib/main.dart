import 'package:flutter/material.dart';
import 'package:profile_app/src/pages/welcomePage/welcomePage_view.dart';
import 'package:provider/provider.dart';
import 'package:profile_app/src/model/text_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TextData(),
      child: MaterialApp(
        home: WelcomeView(),
      ),
    );
  }
}
