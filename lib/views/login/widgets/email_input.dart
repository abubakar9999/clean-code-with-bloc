import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final FocusNode email;
  EmailInput({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: email,
      decoration: const InputDecoration(hintText: 'Email', border: OutlineInputBorder()),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter email';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
