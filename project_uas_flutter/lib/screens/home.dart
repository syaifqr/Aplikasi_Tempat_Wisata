import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.add, color: Colors.white)
              ),
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.home, color: Colors.black)
              ),
              
            ],
          ),
        ),
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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.black),
              onPressed: () {Navigator.of(context).pushNamed('/profil');},
            )
          ],
        ),
        body: Container(
          height: size.height,
          child: SingleChildScrollView(
            
            child: RecomScroller()
          ),
        ),
      ),
    );
  }
}

class RecomScroller extends StatelessWidget {
  const RecomScroller();
  @override
  Widget build(BuildContext context) {
    final double recomHeight = MediaQuery.of(context).size.height * 0.3;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20,top: 30),
          child: Text(
            'WELCOME \nUSER',
            style: TextStyle(fontSize: 40, fontFamily: 'Quantico')
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 20),
          child: Text(
            'Recomendation'
          ),
        ),
        SizedBox(
          height: recomHeight,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              height: recomHeight,
              width: 150,
              margin: EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: () {Navigator.of(context).pushNamed('/detail_destination');},
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                      'assets/images/bromo2.jpg',
                      height: recomHeight,
                      width: 150.0,
                      fit: BoxFit.cover,
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 10),
                      child: Text("Gunung Bromo\nJawa Timur", style: TextStyle(color: Colors.white,))
                    )
                  ],
                  
                ),
              ),
              
            ),
          ),
        ),
        SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Breaking News'
          ),
        ),
        SizedBox(height: 20,),
        Flexible(
          child: ListView.builder(
            itemCount: 7,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              onTap: () {Navigator.of(context).pushNamed('/detail_news');},
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25), 
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(5),
                  ), 
                ),
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'assets/images/bromo2.jpg',
                            height: 70.0,
                            width: 100.0,
                            fit: BoxFit.cover,
                            ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Judul Berita', style: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text('Beritanya adalah',overflow: TextOverflow.ellipsis,),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
            ),
            )
          ),
        
      ],
    );
  }
}
