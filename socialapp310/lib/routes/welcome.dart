import 'package:flutter/material.dart';
import 'package:socialapp310/utils/color.dart';
import 'package:socialapp310/utils/styles.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.darkgreyblack,
      body: SingleChildScrollView (
        child: Container(
          //width: double.infinity,
          //height: MediaQuery.of(context).size.height/3,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("Welcome to Woof", style: kHeadingTextStyle ,),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.asset('assets/images/welcoming.png',height: 370,
                    width: 370,
                  ),
                ),
                Column(
                  children: <Widget>[
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');

                      },
                      // defining the shape
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: AppColors.darkgrey
                          ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text(
                          "Login",
                          style:  TextStyle(
                              color: AppColors.darkpurple,
                              fontSize: 20.0,
                              letterSpacing: -0.7,
                              fontFamily: 'OpenSansCondensed-Light'
                          )
                      ),
                    ),
                    SizedBox(height:20),
                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.pushNamed(context, '/signup');

                      },
                      color: AppColors.darkgrey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text(
                          "Sign up",
                          style: kButtonDarkTextStyle
                      ),
                    ),
                  ],
                )
              ],
            )

        ),
      ),
    );
  }
}