
import 'package:GooglePlayMovies/Pages/definition.dart';
import 'package:GooglePlayMovies/Pages/home.dart';
import 'package:GooglePlayMovies/Pages/store.dart';
import 'package:GooglePlayMovies/Pages/wish_List.dart';
import 'package:flutter/material.dart';
import 'my_Library.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    var _tapCallback;
        return Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text("",style: TextStyle(color: Colors.black),),
                  accountEmail: Text("edvaniosmith1999@gmail.com",style: TextStyle(fontSize: 11, color: Colors.white),),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/Bambino.png"),
                  ),
    
                  otherAccountsPictures: <Widget>[
                    CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("assets/images/rosie.png"),
                    )
                  ],
                ),
    
              ListTile(
                title: Text("Watch Now", style: TextStyle(color: Colors.black87, fontSize: 15,
                        fontWeight: FontWeight.w500),),
                leading: Icon(Icons.local_movies, color: Color.fromRGBO(34, 100, 120, 1),),
                onTap: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Home()),);
                  },
              ),
              ListTile(
                title: Text("My Library", style: TextStyle(color: Colors.black87, fontSize: 15,
                        fontWeight: FontWeight.w500),),
                leading: Icon(Icons.video_library, color: Color.fromRGBO(34, 100, 120, 1),),
                onTap: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Library()),);
                  }, 
              ),
              ListTile(
                title: Text("My Wishlist", style: TextStyle(color: Colors.black87, fontSize: 15,
                        fontWeight: FontWeight.w500),),
                leading: Icon(Icons.check_box, color: Color.fromRGBO(34, 100, 120, 1),),
                onTap: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => WishList()),);
                  },
              ),
              ListTile(
                title: Text("Shop", style: TextStyle(color: Colors.black87, fontSize: 15,
                        fontWeight: FontWeight.w500),),
                leading: Icon(Icons.ondemand_video, color: Color.fromRGBO(34, 100, 120, 1),),
                onTap: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Store()),);
                  }, 
              ),
              SizedBox(height: 15,),
                  Row(
                    children: <Widget>[
                    SizedBox(width: 20,),          
                  Text("Download only", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),),
                  SizedBox(width: 50,),
                 
                  ],
                ),
              ListTile(
                title: Text("Settings", style: TextStyle(color: Colors.black87, fontSize: 15,
                        fontWeight: FontWeight.w500),),
                  onTap: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Definition()),);
                  
                  },
                ),
              ListTile(
                title: Text("Help & feedback", style: TextStyle(color: Colors.black87, fontSize: 15,
                  fontWeight: FontWeight.w500),),
                  onTap: () => _tapCallback,
          ),
          ])
    );
  }
}