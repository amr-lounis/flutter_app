import 'package:flutter/material.dart';
import 'text_field_password.dart';
import 'text_field_email.dart';

//------------------------------------------------------------------------------
class SignInWidget extends StatelessWidget {
  SignInWidget({this.onSignIn});
  //
  final GlobalKey<FormState> _formKey = new GlobalKey();
  //
  Function(String email, String password)? onSignIn;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext cntxt) {
    return Container(
      margin: EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(cntxt).requestFocus(FocusNode());
        },
        child: Container(
          child: Form(
            key: _formKey,
            child: Column(children: <Widget>[
              TextFieldEmail(onSave: (String? value) {
                email = value ?? "";
              }),
              TextFieldPassword(onSave: (String? value) {
                password = value ?? "";
              }),
              _buildLoginRaisedButton(),
            ]),
          ),
        ),
      ),
    );
  }

//------------------------------------------------------------------------------
  Widget _buildLoginRaisedButton() {
    return ElevatedButton(
      child: Text("Sign in"),
      onPressed: () {
        if (!_formKey.currentState!.validate()) {}
        _formKey.currentState!.save();
        this.onSignIn!(this.email, this.password);
      },
    );
  }
}
