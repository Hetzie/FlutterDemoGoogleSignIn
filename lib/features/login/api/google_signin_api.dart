import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
   static const clientId =
      "810053748228-t33n5b2qugpt8ah8qpdqprbgdrcmbb48.apps.googleusercontent.com";

  static final _googleSignIn = GoogleSignIn(clientId: clientId);

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();

  static Future<GoogleSignInAccount?> logout() => _googleSignIn.disconnect();
}
