import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'Menu.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var rating = 0.0;
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
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(25.0),
                    padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 10),
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
              ),
              SizedBox(height: 16),
              Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Text(
            "Recommended by Play",
              style:
        TextStyle(fontSize: 21, color: Colors.black, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
                 SizedBox(width: 45),
                FlatButton(
          color: Colors.red[500],
          textColor: Colors.white,
          disabledColor: Colors.grey,
          disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            splashColor: Colors.red[300],
            onPressed: () {/*...*/},
        child: Text(
          "SHOP",
          style: TextStyle(fontSize: 14.0),
                              ),
                            )

                 ],
              ),
              SizedBox(height: 16),
        SingleChildScrollView(
                child: Column(
                  children: <Widget>[
        Container(
            margin: EdgeInsets.symmetric(vertical: 0.1, horizontal: 23),
            padding: EdgeInsets.fromLTRB(25, 165,25,120),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Lion-King.jpg'),
                  fit: BoxFit.cover)),
                ),
        Container(
            margin: EdgeInsets.symmetric(vertical: 0.1, horizontal: 23),
            height: 225,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
                  ),
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

        Container(
          margin: EdgeInsets.symmetric(vertical: 0.1, horizontal: 13),
          padding: EdgeInsets.symmetric(vertical: 90, horizontal: 73),
            decoration: BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/images/Lion-King-Cover.jpg'),
                fit: BoxFit.fitHeight)),
              ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
        SizedBox(height: 4),
        Text(
            "The Lion King",
              style:
        TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.right,
                ),
        SizedBox(height: 12),
        SmoothStarRating(
          allowHalfRating: false,
          onRated: (v) {
           },
          starCount: 5,
          rating: rating,
          size: 20.0,
          isReadOnly:true,
          color: Colors.white,
          borderColor: Colors.white,
          spacing:0.0
    ),

                  SizedBox(height: 77),

        OutlineButton(
                onPressed: () {},
                child: Text("BUY FROM AOA 6.900,00"),
                borderSide: BorderSide(color: Colors.white),
              )
            ],
          ),
SizedBox(width: 57),
        Container(
                width: 150,
                child: IconButton(
                icon: Icon(Icons.bookmark),
                color: Colors.white,
                onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                      ),
                    ),
                  )
                ]
              )
            )
          ],


          
        ),
      ),
    );
  }
}