import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:signupgoogle/pages/auth.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AuthServies authService = AuthServies();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Center(
          child: SizedBox(
            height: 50,
            child: SignInButton(Buttons.google, onPressed:authService.handleSignIn),
          ),
        ));
  }
}
