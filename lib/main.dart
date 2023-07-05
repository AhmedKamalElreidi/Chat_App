import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:message_me/screens/chat_screen.dart';
import 'package:message_me/screens/login_screen.dart';
import 'package:message_me/screens/registration_screen.dart';
import 'package:message_me/screens/welcome_screen.dart';

 void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp( MyApp());
 }

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: _auth.currentUser !=null ?'/ChatScreen':'/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/RegistrationScreen': (context) => const RegistrationScreen(),
        '/ChatScreen': (context) => const ChatScreen(),
      },
    );
  }
}
