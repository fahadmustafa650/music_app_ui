import 'package:flutter/material.dart';
import 'package:music_app/screens/choose_artist_screen.dart';
import 'package:music_app/screens/sign_in_screen.dart';
import 'package:music_app/screens/sign_up_screen.dart';

const buttonColor = Colors.orangeAccent;

class CustomOrangeButton extends StatelessWidget {
  const CustomOrangeButton({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title.toLowerCase() == 'sign up') {
          Navigator.pushNamed(context, SignInScreen.id);
        } else {
          Navigator.pushNamed(context, ChooseArtistScreen.id);
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 50,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
