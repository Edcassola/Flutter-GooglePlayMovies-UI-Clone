import 'package:flutter/material.dart';

import 'Menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Ver agora', style: TextStyle(fontSize: 15),),
        actions: <Widget>[
          IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.white,
                )
        ],
      ),
      drawer: Menu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              // Center(
          Container(
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/images/download.png'),
            )
          )
        ),

          Text("Para ver vídeos offline, é necessário tranferi-los primeiro", 
        style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),
              // )
            ],
          )
        ]
      )
    );
  }
}