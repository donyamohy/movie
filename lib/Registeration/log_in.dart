import 'package:flutter/material.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import '../home_screen.dart';

class LoginForm extends StatefulWidget {
  static const routelogin = '/log-in';
  @override
  LoginFormState createState() => new LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  void validate() {
    if (formkey.currentState.validate()) {
      print("validated");
    } else {
      print(" not validated");
    }
  }

  void onPressedSubmit() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();
      print("Email " + email);
      print("Password " + password);
      Navigator.of(context).pushNamed(HomeScreen.routehome);
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Form Submitted')));
    }
  }

  String validationp(value) {
    if (value.isEmpty) {
      return 'Please ,its required to enter your password';
    } else {
      return null;
    }
  }

  String validateEmail(String value) {
    if (value.isEmpty) {
      return 'Please enter your e-mail';
    }

    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Sign In'),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
                child: Form(
                    key: formkey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'E-mail'),
                              validator: validateEmail,
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              }),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password'),
                              validator: validationp,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: RaisedButton(
                                  onPressed: onPressedSubmit,
                                  child: Text('Login')))
                        ])))));
  }
}
