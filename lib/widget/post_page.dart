import 'package:flutter/material.dart';
import 'package:submission_1/widget/articles_page.dart';
import 'input_text.dart';

class PostPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create a post"),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Center(
          child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                InputText(
                  hintText: "Title",
                  borderColor: Colors.black,
                  initialValue: "What is flutter ?",
                ),
                InputText(
                  hintText: "Description",
                  maxLines: 20,
                  initialValue:
                      "Flutter is Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.",
                ),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  color: Colors.orange[600],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Publish",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ArticlesPage(),
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
        // child: Text("aoifhaiscna iasnd iasdn iasdn adsicn ainca icnasoi ncasic naoicn"),
      ),
    );
  }
}
