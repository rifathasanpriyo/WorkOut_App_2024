import 'dart:ffi';
import 'package:body_exercise_1/exercise_screen/exercise.dart';
import 'package:body_exercise_1/onboard/bottomnavigation.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  bool isobscure = true;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/background.jpg"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 40, color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 450,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Form(
                  key: formkey,
                  child: Column(
                    children: [
                      // Username Field
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Email can't be empty";
                          }
                        },
                        controller: emailcontroller,
                        style: TextStyle(color: Colors.white), 
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email, color: Colors.white),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      // Password Field
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password can't be empty";
                          }
                          if (value.length < 3) {
                            return "Invalid password";
                          }
                        },
                        controller: passcontroller,
                        obscureText: isobscure,
                        style: TextStyle(color: Colors.white), 
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Colors.white),
                          suffixIcon: IconButton(
                            icon: Icon(
                              isobscure ? Icons.visibility : Icons.visibility_off,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                isobscure = !isobscure;
                              });
                            },
                          ),
                          hintText: "Enter your Password",
                          hintStyle: TextStyle(color: Colors.white54),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Forgot your password?", style: TextStyle(color: Colors.white)),
                      Spacer(),
                      MaterialButton(
                        minWidth: 350,
                        height: 40,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        color: Colors.purple,
                        onPressed: () {
                          if (formkey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>ButtonNavigation(numIndex: 3,) ,
                              ),
                            );
                          }
                        },
                        child: Text("Sign in", style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: RichText(
                          text: TextSpan(
                            text: "Don't have account?",
                            style: TextStyle(color: Colors.white),
                            children: <TextSpan>[
                              TextSpan(text: " Sign Up", style: TextStyle(color: Colors.blue)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
