/*import 'package:flutter/material.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import 'home_screen.dart';

class SignupForm extends StatefulWidget {
  static const routesignup = '/sign-up';
  @override
  SignupFormState createState() => new SignupFormState();
}

class SignupFormState extends State<SignupForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var _passKey = GlobalKey<FormFieldState>();
  String email = '';
  String name = '';
  String password = '';
  bool _termsChecked = true;
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
      print("Termschecked " + _termsChecked.toString());
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
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                                // keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  hintText: "username",
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter Your Name',
                                ),
                                validator: (v) {
                                  if (v.isEmpty) {
                                    return ' you have to enter a username';
                                  }
                                },
                                onSaved: (value) {
                                  setState(() {
                                    name = value;
                                  });
                                }),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                                //keyboardType: TextInputType.email,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'E-mail'),
                                validator: validateEmail,
                                onChanged: (value) {
                                  setState(() {
                                    email = value;
                                  });
                                }),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                              // keyboardType: TextInputType.password,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password'),
                              validator: validationp,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: TextFormField(
                                //  keyboardType: TextInputType.password
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Confirm Password'),
                                validator: (confirmPassword) {
                                  if (confirmPassword.isEmpty)
                                    return 'Enter confirm password';
                                  var password = _passKey.currentState.value;
                                  if (confirmPassword != password) {
                                    return 'Confirm Password invalid';
                                  }
                                }),
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: RaisedButton(
                                  onPressed: onPressedSubmit,
                                  child: Text('Login'))),
                          CheckboxListTile(
                            value: _termsChecked,
                            onChanged: (value) {
                              setState(() {
                                _termsChecked = value;
                              });
                            },
                            subtitle: !_termsChecked
                                ? Text(
                                    'Required',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 12.0),
                                  )
                                : null,
                            title: new Text(
                              'I agree to the terms and condition',
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                          )
                        ])))));
  }
}
*/
