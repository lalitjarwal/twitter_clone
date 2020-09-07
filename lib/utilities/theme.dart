import 'package:flutter/material.dart';

List<BoxShadow> shadow = <BoxShadow>[
  BoxShadow(
      blurRadius: 10,
      offset: Offset(5, 5),
      color: AppTheme.apptheme.accentColor,
      spreadRadius: 1)
];
String get description {
  return '';
}

TextStyle get onPrimaryTitleText {
  return TextStyle(color: Colors.white, fontWeight: FontWeight.w600);
}

TextStyle get onPrimarySubTitleText {
  return TextStyle(
    color: Colors.white,
  );
}

BoxDecoration softDecoration = BoxDecoration(boxShadow: <BoxShadow>[
  BoxShadow(
      blurRadius: 8,
      offset: Offset(5, 5),
      color: Color(0xffe2e5ed),
      spreadRadius: 5),
  BoxShadow(
      blurRadius: 8,
      offset: Offset(-5, -5),
      color: Color(0xffffffff),
      spreadRadius: 5)
], color: Color(0xfff1f3f6));
TextStyle get titleStyle {
  return TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}

TextStyle get subtitleStyle {
  return TextStyle(
      color: AppColor.darkGrey, fontSize: 14, fontWeight: FontWeight.bold);
}

TextStyle get userNameStyle {
  return TextStyle(
      color: AppColor.darkGrey, fontSize: 14, fontWeight: FontWeight.bold);
}

TextStyle get textStyle14 {
  return TextStyle(
      color: AppColor.darkGrey, fontSize: 14, fontWeight: FontWeight.bold);
}

class TwitterColor {
  static final Color bondiBlue = Color.fromRGBO(0, 132, 180, 1.0);
  static final Color cerulean = Color.fromRGBO(0, 172, 237, 1.0);
  static final Color spindle = Color.fromRGBO(192, 222, 237, 1.0);
  static final Color white = Color.fromRGBO(255, 255, 255, 1.0);
  static final Color black = Color.fromRGBO(0, 0, 0, 1.0);
  static final Color woodsmoke = Color.fromRGBO(20, 23, 2, 1.0);
  static final Color woodsmoke_50 = Color.fromRGBO(20, 23, 2, 0.5);
  static final Color mystic = Color.fromRGBO(230, 236, 240, 1.0);
  static final Color dodgetBlue = Color.fromRGBO(29, 162, 240, 1.0);
  static final Color dodgetBlue_50 = Color.fromRGBO(29, 162, 240, 0.5);
  static final Color paleSky = Color.fromRGBO(101, 119, 133, 1.0);
  static final Color ceriseRed = Color.fromRGBO(224, 36, 94, 1.0);
  static final Color paleSky50 = Color.fromRGBO(101, 118, 133, 0.5);
}

class AppColor {
  static final Color primary = Color(0xff1DA1F2);
  static final Color secondary = Color(0xff14171A);
  static final Color darkGrey = Color(0xff1657786);
  static final Color lightGrey = Color(0xffAAB8C2);
  static final Color extraLightGrey = Color(0xffE1E8ED);
  static final Color extraExtraLightGrey = Color(0xfF5F8FA);
  static final Color white = Color(0xFFffffff);
}

class AppTheme {
  static final ThemeData apptheme = ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'HelveticaNeue',
      backgroundColor: TwitterColor.white,
      accentColor: TwitterColor.dodgetBlue,
      brightness: Brightness.light,
      primaryColor: AppColor.primary,
      cardColor: Colors.white,
      unselectedWidgetColor: Colors.grey,
      bottomAppBarColor: Colors.white,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: AppColor.white),
      appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: TwitterColor.white,
          iconTheme: IconThemeData(
            color: TwitterColor.dodgetBlue,
          ),
          elevation: 0,
          textTheme: TextTheme(
            title: TextStyle(
                color: Colors.black, fontSize: 26, fontStyle: FontStyle.normal),
          )),
      tabBarTheme: TabBarTheme(
        labelStyle: titleStyle.copyWith(color: TwitterColor.dodgetBlue),
        unselectedLabelColor: AppColor.darkGrey,
        unselectedLabelStyle: titleStyle.copyWith(color: AppColor.darkGrey),
        labelColor: TwitterColor.dodgetBlue,
        labelPadding: EdgeInsets.symmetric(vertical: 12),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: TwitterColor.dodgetBlue,
      ),
      colorScheme: ColorScheme(
          background: Colors.white,
          onPrimary: Colors.white,
          onBackground: Colors.black,
          onError: Colors.white,
          onSecondary: Colors.white,
          onSurface: Colors.black,
          error: Colors.red,
          primary: Colors.blue,
          primaryVariant: Colors.blue,
          secondary: AppColor.secondary,
          secondaryVariant: AppColor.darkGrey,
          surface: Colors.white,
          brightness: Brightness.light));
}
class AppIcon{
  static final int fabTweet = 0xf029;
  static final int messageEmpty = 0xf187;
  static final int messageFill = 0xf554;
  static final int search = 0xf058;
  static final int searchFill = 0xf558;
  static final int notification = 0xf055;
  static final int notificationFill = 0xf019;
  static final int messageFab = 0xf053;
  static final int home = 0xf053;
  static final int homeFill = 0xF553;
  static final int heartEmpty = 0xf148;
  static final int heartFill = 0xf015;
  static final int settings = 0xf059;
  static final int adTheRate = 0xf064;
  static final int reply = 0xf151;
  static final int retweet = 0xf152;
  static final int image = 0xf109;
  static final int camera = 0xf110;
  static final int arrowDown = 0xf196;
  static final int blueTick = 0xf099;

  static final int link = 0xf098;
  static final int unFollow = 0xf097;
  static final int mute = 0xf101;
  static final int viewHidden = 0xf156;
  static final int block = 0xe609;
  static final int report = 0xf038;
  static final int pin = 0xf088;
  static final int delete = 0xf154;

  static final int profile = 0xf056;
  static final int lists = 0xf094;
  static final int bookmark = 0xf155;
  static final int moments = 0xf160;
  static final int twitterAds = 0xf504;
  static final int bulb = 0xf567;
  static final int newMessage = 0xf035;
  
  static final int sadFace = 0xf430;
  static final int bulbOn = 0xf066;
  static final int bulbOff = 0xf567;
  static final int follow = 0xf175;
  static final int thumbpinFill = 0xf003;
  static final int calender = 0xf203;
  static final int locationPin = 0xf031;
  static final int edit = 0xf112;

}
Widget customIcon(
  BuildContext context, {
  int icon,
  bool isEnable = false,
  double size = 18,
  bool istwitterIcon = true,
  bool isFontAwesomeRegular = false,
  bool isFontAwesomeSolid = false,
  Color iconColor,
  double paddingIcon = 10,
}) {
  iconColor = iconColor ?? Theme.of(context).textTheme.caption.color;
  return Padding(
    padding: EdgeInsets.only(bottom: istwitterIcon ? paddingIcon : 0),
    child: Icon(
      IconData(icon,
          fontFamily: istwitterIcon
              ? 'TwitterIcon'
              : isFontAwesomeRegular
                  ? 'AwesomeRegular'
                  : isFontAwesomeSolid ? 'AwesomeSolid' : 'Fontello'),
      size: size,
      color: isEnable ? Theme.of(context).primaryColor : iconColor,
    ),
  );
}