import 'package:flutter/material.dart';

class PassInput extends StatelessWidget {
  final FocusNode pass;
  const PassInput({super.key, required this.pass});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: pass,
      obscureText: true,
      decoration: const InputDecoration(hintText: 'password', border: OutlineInputBorder()),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter password';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
