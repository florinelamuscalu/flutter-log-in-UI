import 'package:flutter/material.dart';
import 'package:test_firebase/pages/login_page.dart';

import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({ Key? key }) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;

  void toggeleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LogIn(showRegisterPage: toggeleScreens );
    }
    else{
      return RegisterPage(showLogInPage: toggeleScreens);
    }
  }
}