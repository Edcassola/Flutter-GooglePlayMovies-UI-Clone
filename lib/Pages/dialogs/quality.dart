import 'package:flutter/material.dart';

class Quality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

    _buildChild(BuildContext context) => Container(
    height: 240,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Column(
      children: <Widget>[
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text("Escolher qualidade da Transferência", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
        ),
         ListTile(
                title: Text("HD(Melhor Qualidade)", style: TextStyle(color: Colors.black87, fontSize: 14,
                        fontWeight: FontWeight.w400),),
                leading: Icon(Icons.radio_button_checked, color: Colors.red,),
                onTap: () { 
                    // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Home()),);
                  },
              ),
              ListTile(
                title: Text("SD(mais rápido, poupa espaço)", style: TextStyle(color: Colors.black87, fontSize: 14,
                        fontWeight: FontWeight.w400),),
                leading: Icon(Icons.radio_button_unchecked, color: Colors.red,),
                onTap: () { 
                    // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => MyLibrary()),);
                  }, 
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                   child: Text("Cancelar", style: TextStyle(fontSize: 17 ,color: Colors.red),),
                  ),
            ],)
      ]
    ),
  );
}