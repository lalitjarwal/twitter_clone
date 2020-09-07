import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_clone/screens/intro.dart';
import 'package:twitter_clone/utilities/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.apptheme.copyWith(
          textTheme: GoogleFonts.muliTextTheme(
        Theme.of(context).textTheme,
      )),
      title: 'Twitter Clone',
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) {
        return BuildAppHome();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primary,
        body: Center(
          child: Image.asset(
            'assets/images/twitter_white_logo.png',
            height: 85,
          ),
        ));
  }
}

class BuildAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3), () {
        return 1;
      }),
      builder: (ctx, snapshot) {
        if (snapshot.hasData) {
          return IntroScreen();
        } else
          return Scaffold(
            backgroundColor: AppColor.white,
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 76,
                      height: 76,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/twitter.svg',
                      width: 36,
                    )
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  'Loading...',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                )
              ],
            )),
          );
      },
    );
  }
}
