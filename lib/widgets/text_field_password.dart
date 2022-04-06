import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  TextFieldPassword({required this.onSave});
  //
  String password = '';
  final Function(String?) onSave;

  @override
  Widget build(BuildContext cntxt) {
    return Container(
        child: Padding(
            padding: EdgeInsets.only(),
            child: TextFormField(
              style: TextStyle(color: Colors.blue),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1.0)),
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
                return ((value == null) | (value == ''))
                    ? 'Invalid Password'
                    : '';
              },
              onSaved: onSave,
            )));
  }
}
