// import 'package:Play_Filmes_Clone/Screens/Menu/menu.dart';
import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
        
        backgroundColor: Colors.red,
        title: Padding(
          padding: EdgeInsets.only(top: 8),
          child:_menuAppBar(),),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
                )
        ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text("FILMES")
                ),
              ),
              Tab(
                child: Container(
                ),
              ),
              
            ],
          ),
        ),
      )
    );
  }

  Widget _menuAppBar() {
    return Container(
      child: Text('Minha Biblioteca'),
    );
  }
}