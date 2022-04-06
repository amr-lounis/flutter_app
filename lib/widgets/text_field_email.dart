import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  TextFieldEmail({required this.onSave});
  //
  String email = '';
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
                Icons.perm_identity,
                color: Colors.blue,
              ),
              labelText: 'E-Mail',
            ),
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
            validator: (String? value) {
              return ((value == null) | (value == '')) ? 'Invalid Email  ' : '';
            },
            onSaved: onSave),
      ),
    );
  }
}
