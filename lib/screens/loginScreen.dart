
import 'package:flutter/material.dart';
import 'package:twitter_clone/utilities/theme.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          title: Image.asset(
            'assets/images/iconBlue.png',
            height: 26,
          ),
          centerTitle: true,
          actions: [
            InkWell(
              splashColor: Colors.transparent,
              onTap: () {},
              child: Center(
                  child: Text(
                'Sign up',
                style: TextStyle(
                    color: AppColor.primary, fontWeight: FontWeight.bold),
              )),
            ),
            PopupMenuButton(tooltip: 'More options', itemBuilder: (ctx) {})
          ],
        ),
        body: Container(
          color: Colors.white,
        ));
  }
}
