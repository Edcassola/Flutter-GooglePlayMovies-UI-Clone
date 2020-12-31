import 'package:flutter/material.dart';
import 'Menu.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('A minha lista de desejos', style: TextStyle(fontSize: 15),),
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
          Container(
          height: 90,
          decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/add.png'),
        ))
        ),
        Text("Para guardar filmes para ver mais tarde, toque em Adicionar à lista de desejos", 
        style: TextStyle(color: Colors.grey), textAlign: TextAlign.center,),],
        
      )
    );
  }
}