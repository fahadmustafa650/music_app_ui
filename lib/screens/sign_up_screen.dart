import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/Constants/constants.dart';
import 'package:music_app/widgets/custom_orange_button.dart';
import 'package:music_app/widgets/top_text_logo.dart';

class SignUpScreen extends StatefulWidget {
  static final id = "/sign_up_screen";
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: _body(context),
    );
  }

  Container _body(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xff0a0c10),
        image: backgroundImg,
      ),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            TopTextLogo(),
            SizedBox(
              height: 40,
            ),
            _fullNameTextField(context),
            _phoneNoTextField(context),
            _emailTextField(context),
            _passwordTextField(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomOrangeButton(
              title: 'Sign Up',
            ),
            SizedBox(
              height: 30,
            ),
            Text('Or Continue with',
                style: TextStyle(
                  color: Colors.white,
                )),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginWithFB(),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                LoginWithGoogleBtn()
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _fullNameTextField(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Full Name',
          hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _phoneNoTextField(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Phone number',
          hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _emailTextField(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Email address',
          hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  SizedBox _passwordTextField(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(color: Colors.grey[700], fontSize: 16),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class LoginWithGoogleBtn extends StatelessWidget {
  const LoginWithGoogleBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xfffffffb),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 20,
              height: 20,
              image: AssetImage('assets/images/google_icon.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Google',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class LoginWithFB extends StatelessWidget {
  const LoginWithFB({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xff3c55a2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
              size: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Facebook',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class CustomBottomBtn extends StatelessWidget {
  const CustomBottomBtn({Key key, @required this.title}) : super(key: key);

  final title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      height: 55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.orange, width: 2)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
