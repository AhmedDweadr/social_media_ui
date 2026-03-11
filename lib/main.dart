import 'package:flutter/material.dart';
import 'package:social_app_ui/Presentarion/Comment.dart';
import 'package:social_app_ui/Presentarion/CommentOnComment.dart';
import 'package:social_app_ui/Presentarion/CreatePost.dart';
import 'package:social_app_ui/Presentarion/HomePage.dart';
import 'package:social_app_ui/Presentarion/Login.dart';
import 'package:social_app_ui/Presentarion/Profile.dart';
import 'package:social_app_ui/Presentarion/Register.dart';
import 'package:social_app_ui/Presentarion/UserProfile.dart';
import 'package:social_app_ui/Presentarion/changepassword.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        'login': (context) => Login(),
        'register': (context) => Register(),
        'home': (context) => HomePage(),

        'changepassword': (context) => Changepassword(),
        'Comment': (context) => Comment(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      home: UserProfile(),
    );
  }
}
