import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  TextFieldPassword();
  //
  Function(String email, String password)? onSignIn;
  String password = '';

  @override
  Widget build(BuildContext cntxt) {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(),
            child: TextFormField(
              style: TextStyle(color: Colors.red),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 1.0)),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                labelText: 'Password',
              ),
              obscureText: true,
              keyboardType: TextInputType.text,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Invalid Password';
                } else
                  return '';
              },
              onSaved: (String? value) {
                password = value ?? '';
              },
            )));
  }
}
