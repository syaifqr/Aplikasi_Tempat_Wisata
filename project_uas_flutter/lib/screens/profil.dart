import 'package:flutter/material.dart';
import 'package:project_uas_flutter/screens/part/button.dart';

class Profil extends StatefulWidget {
  const Profil({ Key? key }) : super(key: key);

  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () {},
              );
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top:50),
                  child: ClipOval(
                    child: Image.asset(
                    'assets/images/person.png',
                    height: 150.0,
                    width: 150.0,
                    fit: BoxFit.cover,
                    ),
                          
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top:20),
                child: Text(
                  'Email'
                ),
              ),
              Container(
                    margin: EdgeInsets.only(top: 10, left: 60, right: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 0.5),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Luffy26@gmail.com',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top:20),
                child: Text(
                  'Name'
                ),
              ),
              Container(
                    margin: EdgeInsets.only(top: 10, left: 60, right: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 0.5),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Monkey D Luffy',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top:20),
                child: Text(
                  'Username'
                ),
              ),
              Container(
                    margin: EdgeInsets.only(top: 10, left: 60, right: 60),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 0.5),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Luffy26',
                        prefixIcon: Icon(Icons.smartphone),
                      ),
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.only(left: 60, top:20),
                child: Text(
                  'Password'
                ),
              ),
              Container(
                    margin: EdgeInsets.only(top: 10, left: 60, right: 60, bottom: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(width: 0.5),
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key)
                      ),
                    ),
                  ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {Navigator.of(context).pushNamed('/home');},
                child: Center(
                  child: Container(
                        width: 200,
                        height: 50,
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Text(
                            'Edit Profil',
                            style: TextStyle(color: Colors.white)
                          ),
                        )
                      ),
                    ),
                  ),
              
              SizedBox(height: 10),
              InkWell(
                onTap: () {Navigator.of(context).pushNamed('/login');},
                child: 
                  Center(
                    child: Container(
                        width: 200,
                        height: 50,
                        margin: EdgeInsets.only(top: 10, bottom: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            'Logout',
                            style: TextStyle(color: Colors.white)
                          ),
                        )
                      ),
                  ),
                  ),
              
              SizedBox(height: 10),
            ],
          )
        ),
      ),
    );
    
  }
}
