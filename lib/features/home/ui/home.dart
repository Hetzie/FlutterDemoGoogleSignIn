import 'package:demo_google_sign_in/components/my_button.dart';
import 'package:demo_google_sign_in/features/login/api/google_signin_api.dart';
import 'package:demo_google_sign_in/features/login/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatelessWidget {
  final GoogleSignInAccount user;

  const HomePage({super.key, required this.user});

  Future googleLogout(BuildContext context) async {
    GoogleSignInApi.logout();

    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Text("ID: ${user.id}"),
            Image.network(
                user.photoUrl ?? "https://i.stack.imgur.com/l60Hf.png"),
            Text("Name: ${user.displayName}"),
            Text("Email: ${user.email}"),
            SizedBox(height: 200),
            MyButton(
              width: 150.0,
              text: "Log Out",
              onTap: () {
                googleLogout(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
