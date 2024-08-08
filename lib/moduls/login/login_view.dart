import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Login"),
      //   centerTitle: true,
      // ),
        body: Container(
          width: double.infinity,
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/auth_background.png",),
                  fit: BoxFit.cover)
          ),
          child: Padding(
            padding: EdgeInsets.only(top: mediaQuery.size.height * 0.1),
            child: Column(
              children: [
                Text("Login"),
              ],
            ),
          ),

        ));
  }
}
