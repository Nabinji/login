import 'package:flutter/material.dart';

class Silver extends StatefulWidget {
  @override
  _SilverState createState() => _SilverState();
}

class _SilverState extends State<Silver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Icon(Icons.menu),
            pinned: true,
            floating: true,
            snap: true,
            // title: Text("silver AppBar"),
            actions: <Widget>[
              Icon(Icons.add_alarm),
            ],
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Silver AppBar"),
              centerTitle: true,
              background: Image.network(
                "https://as1.ftcdn.net/jpg/03/00/32/90/500_F_300329069_P6isUu6zR2b78rSnLHnvroJN7xhunWv2.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate([
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.blue,
              ),
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.green,
              ),
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.yellow,
              ),
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.blueGrey,
              ),
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.orange,
              ),
              Container(
                height: 220.0,
                width: double.infinity,
                color: Colors.orangeAccent,
              ),
            ]),
            itemExtent: 200.0,
          )
        ],
      ),
    );
  }
}
