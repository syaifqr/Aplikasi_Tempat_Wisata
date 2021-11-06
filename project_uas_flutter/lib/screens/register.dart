import 'package:flutter/material.dart';
import 'package:project_uas_flutter/screens/part/button.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SingleChildScrollView(
        child: Container(
            color: Colors.green,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 100, bottom: 30),
                    child: Text('REGISTER',
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
                        hintText: 'Name',
                        prefixIcon: Icon(Icons.person),
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
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.smartphone),
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
                Expanded(
                  child: Center(
                    child: ButtonWidget2(
                      onClick: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      btnText: "Register",
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(text: "Do you have an account ? ", style: TextStyle(color: Colors.black)),
                  ]),
                ),
                Expanded(
                  child: Center(
                    child: ButtonWidget1(
                      onClick: () {
                        Navigator.of(context).pushNamed('/login');
                      },
                      btnText: "Login",
                    ),
                  ),
                ),
              ],
            )),
      ),
    ));
  }

  
}
