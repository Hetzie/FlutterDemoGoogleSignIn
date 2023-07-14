import 'package:demo_google_sign_in/components/my_button.dart';
import 'package:demo_google_sign_in/components/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Login extends StatelessWidget {
  Login({super.key});

  //text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user method
  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 80,
                ),

                //  Login title
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.blueGrey.shade900,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),


                //  email
                MyTextField(
                  controller: emailController,
                  hintText: "Enter email",
                  obscureText: false,
                ),


                //  password
                MyTextField(
                  controller: passwordController,
                  hintText: "Enter password",
                  obscureText: true,
                ),


                //  forgot pass
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('Forgot Password?')],
                  ),
                ),
                const SizedBox(height: 25),

                //  login button
                MyButton(
                  onTap: signInUser,
                ),


                // or continue with text
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: Divider()),
                      Text('or continue with'),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
                SizedBox(height: 25,),



                //  google sign in option
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.blueGrey.shade200
                  ),
                  child: Image.asset(
                    'images/ic_google.png',
                    height: 20,
                  ),
                ),
                SizedBox(height: 80),

                //  register redirect text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    SizedBox(width: 4,),
                    Text("Register Now", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
