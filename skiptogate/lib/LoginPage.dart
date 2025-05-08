import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skiptogate/shared/Colors.dart';
import 'package:skiptogate/shared/components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 bool _isObsecure=true;
 final _formKey = GlobalKey<FormState>();
 var emailLogController = TextEditingController();
 var passwordLogController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
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
                        "Create an account or log in to make your travel life easier !",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: secondColor,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 20),
      
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your Email address';
                            }
                            return null;
                          },
                          controller: emailLogController,
      
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.alternate_email_outlined, // 👈 Correct usage
                              color: primaryColor,
                            ),

                            hintText: "Email",
                            fillColor: primaryColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: secondColor, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: primaryColor, width: 2.0),
                            ),
                          ),
                        ),
                      ),
      
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          controller: passwordLogController,
                          obscureText: _isObsecure,
                          keyboardType: TextInputType.visiblePassword,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock_outline, // 👈 Correct usage
                              color: primaryColor,
                            ),

              suffixIcon: IconButton(
      
                onPressed: (){
                  setState(() {
                    _isObsecure = !_isObsecure;
                  });
                },
      
                  icon: Icon(_isObsecure? Icons.visibility:Icons.visibility_off,
              color: _isObsecure? primaryColor:secondColor,
              )),

                            hintText: "*********",
                            fillColor: primaryColor,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: secondColor, width: 2.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: primaryColor, width: 2.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
      
                      // Forget Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () {
                            print("Forget Password?");
                          },
                          child: const Text(
                            "Forget Password?",
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
                            if(_formKey.currentState!.validate()){
                              print(passwordLogController.text);
                              print(emailLogController.text);
                              print("HIIIIIIIIIIIIIIII");
                            }
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
                      SizedBox(height: 20,),
                      Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text(
                         "Don't Have an account?",
                          style: GoogleFonts.manrope(
                            color:secondColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                          TextButton(
                              style: ButtonStyle(
                                minimumSize: WidgetStateProperty.all(Size(0, 0)),
                              padding: WidgetStateProperty.all(EdgeInsets.only(left: 3,right: 3)),

                              ),
                              onPressed: (){}, child: Text(
                            "Register Now",
                            style: GoogleFonts.manrope(
                              color:primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                      ],)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
