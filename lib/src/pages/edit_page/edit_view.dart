import 'package:flutter/material.dart';
import 'package:profile_app/src/pages/welcomePage/welcomePage_view_model.dart';
import 'package:provider/provider.dart';

class EditView extends StatelessWidget {
  String newName;
  String newNumber;
  String newMail;
  @override
  Widget build(BuildContext context) {
    final modal = Provider.of<WelcomeViewModel>(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      color: Colors.black,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 10.0),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'EDIT PROFILE',
                style: TextStyle(
                  color: Color.fromRGBO(100, 100, 100, 1),
                  fontSize: 30.0,
                  letterSpacing: 4.0,
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (currentTextName) {
                    newName = currentTextName;
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                    color: Colors.amber[300],
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                      color: Colors.amber[300],
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (currentTextNumber) {
                    newNumber = currentTextNumber;
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                    color: Colors.amber[300],
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Phone',
                    hintStyle: TextStyle(
                      color: Colors.amber[300],
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (currentTextMail) {
                    newMail = currentTextMail;
                  },
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2.0,
                    color: Colors.amber[300],
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.amber[300],
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  onPressed: () {
                    if (newName.isNotEmpty &&
                        newNumber.isNotEmpty &&
                        newMail.isNotEmpty) {
                      modal.UpdateAll(newName, newNumber, newMail);
                      Navigator.pop(context);
                    }
                  },
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'SAVE',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      letterSpacing: 4.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
