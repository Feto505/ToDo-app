// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class LoginView extends StatelessWidget {
//   const LoginView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var mediaQuery = MediaQuery.of(context);
//     var theme = Theme.of(context);
//     return Scaffold(
//         body: Container(
//       width: double.infinity,
//       height: 400,
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage(
//                 "assets/images/auth_background.png",
//               ),
//               fit: BoxFit.cover)),
//       child: Padding(
//         padding: EdgeInsets.only(
//             top: mediaQuery.size.height * 0.1, left: 20, right: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               "Login",
//               textAlign: TextAlign.center,
//               style: theme.textTheme.bodyMedium
//                   ?.copyWith(fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(
//               height: 190,
//             ),
//             Column(
//               children: [
//                 Text(
//                   "Welcome back!",
//                   style: theme.textTheme.bodyLarge?.copyWith(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w800
//                   ),
//                 ),
//                 TextField(
//                   decoration: InputDecoration(
//                     label: Text("E-ail",style: theme.textTheme.bodySmall,),
//
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:to_do/core/app_theme_manager.dart';
import 'package:to_do/core/page_routes_names.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
              "Login",
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
                  Text(
                    "Welcome back!",
                    textAlign: TextAlign.start,
                    style: theme.textTheme.bodyLarge?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w800),
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
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "forget password!",
                      style: theme.textTheme.displaySmall!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
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
                        //   if(formKey.currentState!.validate()){
                        //     print("It is a valid");
                        //   }
                        Navigator.pushReplacementNamed(
                            context, PageRoutesNames.layout);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "login",
                            style: theme.textTheme.displayMedium,
                          ),
                          const Icon(Icons.arrow_forward),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, PageRoutesNames.registration);
                    },
                    child: Text(
                      "or create my account",
                      style: theme.textTheme.displaySmall!.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
