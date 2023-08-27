import 'package:flutter/material.dart';
import 'package:z_chat/screens/chat_screen.dart';
import 'package:z_chat/screens/login_screen.dart';
import 'package:z_chat/screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(ZChat());
}

class ZChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      /*home: WelcomeScreen(),*/
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
