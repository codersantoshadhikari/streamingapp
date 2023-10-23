import 'package:flutter/material.dart';
import 'package:streamingapp/utils/constants.dart';
import 'package:streamingapp/shared/rounded_button.dart';
import 'package:streamingapp/screens/authentication/login.dart';
import 'package:streamingapp/screens/authentication/signup.dart';

import '../../shared/social_login_button.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: 64,
                          child: Image.asset(
                            "assets/icons/joystick.png",
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        "Welcome to\neSports",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: SocialLoginButton(
                  onTap: () {},
                ),
              ),
              SizedBox(
                height: 16,
              ),
              RoundedButton(
                text: "Log In",
                color: Colors.white12,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
              SizedBox(
                height: 16,
              ),
              RoundedButton(
                text: "Sign Up",
                color: kPrimaryColor,
                onPress: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
