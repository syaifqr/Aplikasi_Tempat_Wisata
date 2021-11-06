import 'package:flutter/material.dart';

class DetailPlace extends StatefulWidget {
  const DetailPlace({ Key? key }) : super(key: key);

  @override
  _DetailPlaceState createState() => _DetailPlaceState();
}

class _DetailPlaceState extends State<DetailPlace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
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
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                    'assets/images/bromo2.jpg',
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 20),
                      child: Text("Gunung Bromo\nJawa Timur", style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,))
                    )
                ],
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        'About This Place',
                        style: TextStyle(
                          fontFamily: 'Quantico',
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 20, right:20),
                      child: Text(
                        'Tempat ini ada di Jawa Timur, yang sering menjadi tujuan destinasi para wisatawan. Destinasi ini memiliki view yang indah, apalagi saat sunrise ataupun sunset. Ayo ramaikan tempat ini, tapi jangan lupa tetap jaga kebersihan jika mengunjungi destinasi ini ya :)',
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Text(
                        'Upload by',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Luffy26',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
