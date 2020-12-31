import 'package:GooglePlayMovies/Pages/helpers/dialog_idiom.dart';
import 'package:flutter/material.dart';

import 'helpers/dialog_download.dart';
import 'helpers/dialog_quality.dart';

class Definition extends StatefulWidget {
  @override
  _DefinitionState createState() => _DefinitionState();
}

class _DefinitionState extends State<Definition> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            elevation: 0,
            title: Text('Definições', style: TextStyle(fontSize: 15, color: Colors.white,),
          ),
          ),
          body: SingleChildScrollView(
                  child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                  SizedBox(height: 15,),  
                  Row(
                      children: <Widget>[     
                        SizedBox(width: 15,),      
                    Text("Geral", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),),
                      ]
                  ),
                  SizedBox(height: 10,), 
                    CheckboxListTile(
                  title: Text("Activar cartões de informação", style: TextStyle(color: Colors.black87, fontSize: 14,
                          fontWeight: FontWeight.w800),),
                  subtitle: Text("Mostrar informações sobre atores e músicas na posição atual do vídeo", style: TextStyle(fontSize: 12)),
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: true,
              onChanged: (bool value){
                setState(() {});
            },  
activeColor: Colors.red
        ),
                
            Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
            ),

                ListTile(
              title: Text("controle parental", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("Mostrar tudo", style: TextStyle(fontSize: 12)),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => ParentalControl()));
              },
                ), 
              ],
            ),
            Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
            ),

            Row(
                  children: <Widget>[     
                    SizedBox(width: 15,),      
                Text("Idioma e legendas", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),),
                  ]
              ),

              ListTile(
              title: Text("Idioma do áudio", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("O idioma original do vídeo", style: TextStyle(fontSize: 12)),
              onTap: () {
                DialogIdiom.exit(context);
              },
                ),

                Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
            ),

              ListTile(
              title: Text("Definições das legendas", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("Definir preferências para legendas ocultas", style: TextStyle(fontSize: 12)),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Legend()));
              },
                ),

                Row(
                  children: <Widget>[     
                    SizedBox(width: 15,),      
                Text("Transferência", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),),
                  ]
              ),

              ListTile(
              title: Text("Gerir transferências", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("Libertar espaço e ver transferências em curso", style: TextStyle(fontSize: 12)),
                ),

                Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
                ),

              ListTile(
              title: Text("Qualidade", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("HD(Melhor Qualidade)", style: TextStyle(fontSize: 12)),
               onTap: () {
                DialogQuality.exit(context);
              },
                ),

                Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
                ),

              ListTile(
              title: Text("Armazenamento", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("Definir armazenamento das transferências", style: TextStyle(fontSize: 12)),
              onTap: () {
                DialogDownload.exit(context);
              },
                ),
                SizedBox(height: 20,),

                Row(
                  children: <Widget>[     
                    SizedBox(width: 15,),      
                Text("Acerca de", style: TextStyle(color: Colors.red, fontWeight: FontWeight.w500),),
                  ]
              ),

                SizedBox(height: 15,),
              ListTile(
              title: Text("Licença de código aberto", style: TextStyle(color: Colors.black87, fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("Detalhes de licença para tipos de letra e sofware de código aberto", style: TextStyle(fontSize: 12),)
                ),

            Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
            ),

            ListTile(
              title: Text("ID do Dispositivo", style: TextStyle(color: Color.fromRGBO(181, 181, 181, 80), fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("4501763455296417057", style: TextStyle(fontSize: 12, color: Color.fromRGBO(181, 181, 181, 80))),
              enabled: false,
                ),

                Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
                ),

              ListTile(
              title: Text("Versão da Aplicação", style: TextStyle(color: Color.fromRGBO(181, 181, 181, 80), fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("3.8.8 [AO] [AO]", style: TextStyle(fontSize: 12, color: Color.fromRGBO(181, 181, 181, 80))),
              enabled: false,
             
                ),

                Divider(
                      height: 14,
                      thickness: 0.5,
                      color:Colors.black.withOpacity(0.3),
                      indent: 12,
                      endIndent: 12,
                ),

              ListTile(
              title: Text("Dispositivo", style: TextStyle(color: Color.fromRGBO(181, 181, 181, 80), fontSize: 14,
                      fontWeight: FontWeight.w800),),
              subtitle: Text("Definir armazenamento das transferências", style: TextStyle(fontSize: 12, color: Color.fromRGBO(181, 181, 181, 80))),
              enabled: false,
            ),
          ],
        ),
      ),
    );
  }
}