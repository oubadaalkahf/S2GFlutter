import 'package:flutter/material.dart';
import 'package:skiptogate/shared/Colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // sets background color
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(top: 35),
        child: Column(
          children: [
            // Top Image
            Container(
              margin: const EdgeInsets.only(top: 30),
              height: 80,
              child: Image.asset("assets/images/skip2gate2.png"),
            ),

            // Login Form Container
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Text(
                      "Get Started Now!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: textHeaderColor,
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Create an account or log in to explore about our app",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: secondColor,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Email Field

                    const SizedBox(height: 20),

                    // Password Field
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility_outlined, color: primaryColor),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Forget Password
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {
                          print("Forget Password");
                        },
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(
                            color: primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Sign In Button
                    SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: MaterialButton(
                        color: primaryColor,
                        onPressed: () {
                          print("Sign In Pressed");
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
