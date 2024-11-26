import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  FocusNode email = FocusNode();
  FocusNode pass = FocusNode();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                EmailInput(
                  email: email,
                ),
                SizedBox(
                  height: 20,
                ),
                PassInput(pass: pass),
                SizedBox(
                  height: 20,
                ),
                LoginButton(
                  formKey: _formKey,
                )
              ],
            )),
      ),
    );
  }
}
