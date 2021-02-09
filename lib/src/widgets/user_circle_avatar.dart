import 'package:flutter/material.dart';

class UserCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 60.0,
        backgroundImage: AssetImage('assets/sups.jpg'),
      ),
    );
  }
}
