import 'package:clean_code_architecture/blocs/bloc/login_bloc.dart';
import 'package:clean_code_architecture/utils/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInput extends StatelessWidget {
  final FocusNode email;
  EmailInput({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
        buildWhen: (previous, current) => previous.email != current.email,
        builder: (context, state) {
          return TextFormField(
            keyboardType: TextInputType.emailAddress,
            focusNode: email,
            decoration: const InputDecoration(hintText: 'Email', border: OutlineInputBorder()),
            onChanged: (value) {
              context.read<LoginBloc>().add(Emailchanged(email: value));
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Enter email';
              }
              if (!Validation.emailValidator(value)) {
                return 'Email is not vorrect';
              }

              return null;
            },
            onFieldSubmitted: (value) {},
          );
        });
  }
}
