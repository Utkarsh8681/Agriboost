import 'package:agriboost/Login_pages/SignIn_Page.dart';
import 'package:agriboost/Login_pages/SignUp_Page.dart';
import 'package:agriboost/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.blue[50],
        backgroundColor: Color.fromRGBO(233, 241, 241, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: SvgPicture.asset(
                    "assets/tree.svg",
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Welcome to AgriBoost",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Your Smart Farming Campaign",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w300,
                        color: Colors.black)),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Buttons(
                    navigate: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninPage()));
                    },
                    buttonColor: Colors.green,
                    buttonText: "Login",
                    buttonIcon: Icon(Icons.logout),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Buttons(
                    navigate: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    buttonColor: Colors.blue,
                    buttonText: "Register",
                    buttonIcon: Icon(Icons.person_add),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
