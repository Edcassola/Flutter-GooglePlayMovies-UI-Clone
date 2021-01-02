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
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(25.0),
                  padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 20),
                  decoration: BoxDecoration(
                  color: Colors.redAccent
                  ),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(22.0),
                padding: EdgeInsets.fromLTRB(25.0, 30.0, 25.0, 100),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                image: AssetImage('assets/images/view.png'),
                fit: BoxFit.fitHeight
                )
            ),
        ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
        padding: const EdgeInsets.all(6.0),
        child: Text(
          "Get Started",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
            "Find a great movie in the Play Store, then kick back and enjoy with the Play Movies & TV app.", style: 
            TextStyle(color: Colors.white, fontSize: 15.0,))
      ),
        ],
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
        color: Colors.red[800],
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
          padding: EdgeInsets.all(10.0),
          splashColor: Colors.red[500],
          onPressed: () {/*...*/},
      child: Text(
        "SHOP MOVIES",
        style: TextStyle(fontSize: 14.0),
                            ),
                          )
                        ]
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
    );
  }
}