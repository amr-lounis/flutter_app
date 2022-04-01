import 'package:flutter/material.dart';

///////////////////////////////////////////////////////////////////////////////
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
              _buildEmailTextField(),
              _buildPasswordTextField(),
              _buildLoginRaisedButton(),
            ]),
          ),
        ),
      ),
    );
  }

  ////////////////////////////////////////////////////////////////////////////////
  Widget _buildEmailTextField() {
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
                  return null;
              },
              onSaved: (String? value) {
                email = value ?? "";
              },
            )));
  }

  //////////////////////////////////////////////////////////////////////////////
  Widget _buildPasswordTextField() {
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
                  return null;
              },
              onSaved: (String? value) {
                password = value ?? '';
              },
            )));
  }

////////////////////////////////////////////////////////////////////////////////
  Widget _buildLoginRaisedButton() {
    return RaisedButton(
      child: Text("Sign in"),
      onPressed: () {
        if (!_formKey.currentState!.validate()) return;
        _formKey.currentState!.save();
        this.onSignIn!(this.email, this.password);
      },
    );
  }
////////////////////////////////////////////////////////////////////////////////
}
