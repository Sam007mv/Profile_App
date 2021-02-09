import 'package:flutter/material.dart';
import 'package:profile_app/src/pages/welcomePage/welcomePage_view_model.dart';
import 'package:profile_app/src/widgets/user_circle_avatar.dart';
import 'package:profile_app/src/pages/edit_page/edit_view.dart';
import 'package:provider/provider.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<WelcomeViewModel>(context);
    model.getData();
    return Scaffold(
      floatingActionButton: Container(
        height: MediaQuery.of(context).size.width * 0.13,
        width: MediaQuery.of(context).size.width * 0.22,
        child: FloatingActionButton.extended(
          icon: Icon(
            Icons.edit,
            color: Colors.black,
          ),
          backgroundColor: Colors.amber,
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: EditView(),
                ),
              ),
            );
          },
          label: Text(
            'Edit',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      backgroundColor: Colors.grey[900],
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserCircleAvatar(),
              Divider(
                height: 70.0,
                color: Colors.grey[900],
              ),
              Text(
                'Name',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                model.name,
                style: TextStyle(
                  color: Colors.amber[300],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                'Ph',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                model.phoneNumber,
                style: TextStyle(
                  color: Colors.amber[300],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                ),
              ),
              SizedBox(height: 30.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      model.email,
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 2.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
