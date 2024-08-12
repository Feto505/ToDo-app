import 'package:flutter/material.dart';
import 'package:to_do/core/page_routes_names.dart';

import '../../core/app_theme_manager.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  TextEditingController personController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool obSecured = true;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/auth_background.png",
              ),
              fit: BoxFit.cover),
          color: theme.primaryColor),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Create Account",
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: formKey,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: mediaQuery.size.height * .2,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "plz Enter the name";
                      }
                      var regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&*()*+]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (!regex.hasMatch(value)) {
                        return "No valid Name";
                      } else {
                        return null;
                      }
                    },
                    controller: personController,
                    cursorColor: AppThemeManager.primaryBlueColor,
                    cursorHeight: 25,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.person),
                        hintText: "please enter your Full Name",
                        label: Text(
                          "full name",
                          style: theme.textTheme.displaySmall,
                        ),
                        errorStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Colors.red,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: theme.primaryColorLight, width: 2))),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "plz Enter the name";
                      }
                      var regex = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&*()*+]+@[a-zA-Z0-9.a-zA-Z0-9]+\.[a-zA-Z]+");
                      if (!regex.hasMatch(value)) {
                        return "No valid Email";
                      } else {
                        return null;
                      }
                    },
                    controller: emailController,
                    cursorColor: AppThemeManager.primaryBlueColor,
                    cursorHeight: 25,
                    // onSubmitted: (value){
                    //   print(value); //pressed enter
                    // },
                    // onChanged: (value){//prent ever letter y write ex search
                    //   print(value); //pressed enter
                    // },
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.email),
                        hintText: "please enter your email",
                        label: Text(
                          "E-mail",
                          style: theme.textTheme.displaySmall,
                        ),
                        errorStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Colors.red,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: theme.primaryColorLight, width: 2))),
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return "plz Enter the name";
                      } else {
                        return null;
                      }
                    },
                    obscureText: obSecured,
                    //hide the text
                    obscuringCharacter: "F",
                    controller: passwordController,
                    cursorColor: AppThemeManager.primaryBlueColor,
                    cursorHeight: 25,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                        suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                obSecured = !obSecured;
                              });
                            },
                            child: Icon(obSecured
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        hintText: "please enter your password",
                        label: Text(
                          "Password",
                          style: theme.textTheme.displaySmall,
                        ),
                        errorStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          color: Colors.red,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: theme.primaryColorLight, width: 2))),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  FilledButton(
                      style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 12),
                          backgroundColor: theme.primaryColorLight,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      onPressed: () {
                        // print(emailController.text);
                        // if(formKey.currentState!.validate()){
                        //   print("It is a valid");
                        // }
                        Navigator.pushReplacementNamed(
                            context, PageRoutesNames.layout);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "create account",
                            style: theme.textTheme.displayMedium,
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      )),
                ],
              ),
            ),
          )),
    );
  }
}
