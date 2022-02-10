import 'package:flutter/material.dart';
import 'screens/choose_artist_screen.dart';
import 'screens/my_collection_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/splash_screen.dart';
import 'widgets/custom_slider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SliderCs(),
      theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: TextTheme(bodyText1: TextStyle(color: Colors.orange))),
      initialRoute: CustomSplashScreen.id,
      routes: {
        CustomSplashScreen.id: (context) => CustomSplashScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        ChooseArtistScreen.id: (context) => ChooseArtistScreen(),
        MyCollectionScreen.id: (context) => MyCollectionScreen(),
      },
    );
  }
}
