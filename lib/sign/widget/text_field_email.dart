import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  TextFieldEmail();
  //
  Function(String email, String password)? onSignIn;
  String email = '';

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
                  Icons.perm_identity,
                  color: Colors.blue,
                ),
                labelText: 'E-Mail',
              ),
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              validator: (String? value) {
                if (value!.isEmpty) {
                  return 'Invalid email';
                } else
                  return '';
              },
              onSaved: (String? value) {
                email = value ?? "";
              },
            )));
  }
}
