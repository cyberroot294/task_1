import 'package:flutter/material.dart';
import 'articles_page.dart';
import 'input_text.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final hintColor = Colors.white54;
  final borderInputColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 40),
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 60),
            child: Center(
              child: Text(
                "Blogging",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 34,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                InputText(
                  hintText: "Full Name",
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  hintColor: this.hintColor,
                  borderColor: borderInputColor,
                ),
                InputText(
                  hintText: "Valid Email",
                  icon: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                  hintColor: this.hintColor,
                  borderColor: borderInputColor,
                ),
                InputText(
                  hintText: "Password",
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintColor: this.hintColor,
                  borderColor: borderInputColor,
                ),
                InputText(
                  hintText: "Confirm Password",
                  icon: Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  hintColor: this.hintColor,
                  borderColor: borderInputColor,
                ),
                SizedBox(
                  height: 25,
                ),
                FlatButton(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  minWidth: MediaQuery.of(context).size.width,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArticlesPage()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
