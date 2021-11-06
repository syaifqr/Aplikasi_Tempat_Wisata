import 'package:flutter/material.dart';
import 'package:project_uas_flutter/screens/part/button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Expanded(
          child: Container(
              color: Colors.green,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(top: 150, bottom: 30),
                      child: Text('LOGIN',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 48.0,
                            fontFamily: 'Quantico',
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ))),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 40, right: 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, right: 40),
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: ButtonWidget1(
                        onClick: () {
                          Navigator.of(context).pushNamed('/home');
                        },
                        btnText: "Login",
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(text: "Don't have an account ? ", style: TextStyle(color: Colors.black)),
                    ]),
                  ),
                  Expanded(
                    child: Center(
                      child: ButtonWidget2(
                        onClick: () {
                          Navigator.of(context).pushNamed('/register');
                        },
                        btnText: "Register",
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  
}
