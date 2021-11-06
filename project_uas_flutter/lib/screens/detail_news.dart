import 'package:flutter/material.dart';

class DetailNews extends StatefulWidget {
  const DetailNews({ Key? key }) : super(key: key);

  @override
  _DetailNewsState createState() => _DetailNewsState();
}

class _DetailNewsState extends State<DetailNews> {
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
                    child: Image.asset(
                    'assets/images/bromo2.jpg',
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 40, right: 40),
                      child: Text(
                        'Judul berita ini panjang sekali sampe kebawah',
                        style: TextStyle(
                          fontSize: 20,
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
                        'Source from',
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
