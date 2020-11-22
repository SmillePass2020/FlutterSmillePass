import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class AyudaUsuarioPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(36, 164, 242, 1),
          elevation: 0,
          title: RichText(
            text: TextSpan(
              style: Theme.of(context).
              textTheme.
              title, 
              children: [
                TextSpan(
                  text: 'Listos para ayudarte', 
                  style: TextStyle(
                    color: Colors.white),
                ),
              ]
            ),
          ), 
        ),
        drawer: MenuLateralUsuarios(),
        body: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(36, 164, 242, 1),
                    Color.fromRGBO(118, 193, 240, 1),
                    Color.fromRGBO(175, 221, 249, 1),
                    Color.fromRGBO(248, 248, 248, 1),
                  ],
                  stops: [0.15,0.35,0.7,1]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearComoloUso(context),
              SizedBox(height: 30),
              _contacto(context),
              SizedBox(height: 15),
              _problemas(context),
              SizedBox(height: 15),
              _denuncias(context),
            ],
          ),
         ),
       ],
      )
    );
  }

  Widget _crearComoloUso(BuildContext context){
    return Container(
      margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
    decoration: BoxDecoration(
      color: Colors.white,
        shape: BoxShape.rectangle,   
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.blueGrey[100],
          width:0.9,
        ),
    ),    
    child:Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
                height: 100,
                width: 10.0,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
                ),
              ),

              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child:
                      Text(
//Texto fijo (creo)                        
                        'Bienvenidos al centro de asistencia, aqui podras resolver tus problemas y dudas. \nSos MUUUUUY importante para nosotros, tus problemas son los nuestros',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.justify,),
                  ),
          ]
       )
    );
  }


//Cada uno corresponde a un mail diferente el cual se filtrara de esa manera
  Widget _contacto(BuildContext context){

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Contactanos', 
            style: Theme.of(context).textTheme.title,textScaleFactor: 0.75),
            subtitle: Text('Si queres ser parte de SmilePass o felicitarnos...')
          ),
          Divider(),
              FlatButton(
//Recibir un mail con esta informacion                
                child: Text('Enviar Mail', style: Theme.of(context).textTheme.title,textScaleFactor: 0.80),
                onPressed: () {},
              ),
        ]
      )
    );
  }

  Widget _problemas(BuildContext context){

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Problemas', 
            style: Theme.of(context).textTheme.title,textScaleFactor: 0.75),
            subtitle: Text('Si algo en la aplicacion no fuinciona bien o queres ayudarnos a mejorar')
          ),
          Divider(),
              FlatButton(
//Recibir un mail con esta informacion                   
                child: Text('Enviar Mail', style: Theme.of(context).textTheme.title,textScaleFactor: 0.80),
                onPressed: () {},
              ),
        ]
      )
    );
  }

  Widget _denuncias(BuildContext context){

    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon( Icons.photo_album, color: Colors.blue ),
            title: Text('Denuncias', 
            style: Theme.of(context).textTheme.title,textScaleFactor: 0.75),
            subtitle: Text('Si no respetaron el descuento o hubo algun problema con el local')
          ),
          Divider(),
              FlatButton(
//Recibir un mail con esta informacion                   
                child: Text('Enviar Mail', style: Theme.of(context).textTheme.title,textScaleFactor: 0.80),
                onPressed: () {},
              ),
        ]
      )
    );
  }

}
