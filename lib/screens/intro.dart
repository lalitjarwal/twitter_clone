import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter_clone/screens/loginScreen.dart';
import 'package:twitter_clone/utilities/theme.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 0.0,
        centerTitle: true,
        title: SvgPicture.asset(
          'assets/images/twitter.svg',
          width: 26,
          height: 26,
        ),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Spacer(),
            Text(
              'See what\'s \nhappening in the \nworld right now.',
              textScaleFactor: 2,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 24,
            ),
            RawMaterialButton(
              padding: const EdgeInsets.all(7.0),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              elevation: 0.0,
              splashColor: Colors.transparent,
              shape: StadiumBorder(),
              disabledElevation: 0.0,
              highlightElevation: 0.0,
              focusElevation: 0.0,
              highlightColor: Colors.black.withOpacity(0.2),
              onPressed: () {},
              fillColor: AppColor.primary,
              child: Text(
                'Create account',
                style: TextStyle(
                    color: AppColor.white, fontWeight: FontWeight.bold),
                textScaleFactor: 1.8,
              ),
            ),
            Spacer(),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Have an account already?',
                style: TextStyle(color: AppColor.darkGrey),
              ),
              SizedBox(width: 8),
              Material(
                  child: InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {

                        Navigator.of(context).push(CupertinoPageRoute(builder: (ctx)=>Login()));
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: AppColor.primary,
                        ),
                      )))
            ])
          ]),
        ),
      ),
    );
  }
}
