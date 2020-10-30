import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vc_chat/screens/chat_screen.dart';
import 'package:vc_chat/screens/login_screen.dart';
import 'package:vc_chat/screens/registration_screen.dart';
import 'package:vc_chat/screens/welcome_screen.dart';


//void main() => runApp(MyApp());
Future<void> main() async {
  final prefs = await SharedPreferences.getInstance();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Vc_chat());
}

class Vc_chat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id ,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id :(context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}


