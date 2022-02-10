import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/Constants/constants.dart';
import 'package:music_app/screens/sign_up_screen.dart';
import 'package:music_app/widgets/custom_orange_button.dart';
import 'package:music_app/widgets/top_text_logo.dart';

class SignInScreen extends StatefulWidget {
  static final id = "/sign_in_screen";
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Sign in',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   TextButton(
        //     onPressed: () {},
        //     child: Text(
        //       'Skip',
        //       style: TextStyle(
        //           color: Colors.black,
        //           fontSize: 18,
        //           fontWeight: FontWeight.bold),
        //     ),
        //   )
        // ],
      ),
      body: Container(
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
              emailTextField(context),
              passwordTextField(context),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              CustomOrangeButton(
                title: 'Sign In',
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
              Text('Not Registered yet?',
                  style: TextStyle(
                    color: Colors.white,
                  )),
              SizedBox(
                height: 30,
              ),
              CustomBottomBtn(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emailTextField(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
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

  SizedBox passwordTextField(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.10,
      child: TextFormField(
        // keyboardType: TextInputType.p,
        obscureText: true,
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

class CustomBottomBtn extends StatelessWidget {
  const CustomBottomBtn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SignUpScreen.id);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        height: 55,
        decoration: BoxDecoration(
            // color: Color(0xffe32e22),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.orange, width: 2)),
        child: Center(
          child: Text(
            'Sign Up',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
