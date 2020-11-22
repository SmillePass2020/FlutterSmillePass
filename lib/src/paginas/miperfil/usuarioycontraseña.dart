import 'package:flutter/material.dart';

class UsuarioyContrasenaPage extends StatefulWidget {
  @override
  _UsuarioyContrasenaPageState createState() => _UsuarioyContrasenaPageState();
}

class _UsuarioyContrasenaPageState extends State<UsuarioyContrasenaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: RichText(
            text: TextSpan(
              style: Theme.of(context).
              textTheme.
              title, 
              children: [
                TextSpan(
                  text: 'Usuario y Contraseña', 
                  style: TextStyle(
                    color: Colors.blueGrey),
                ),
              ]
            ),
          ), 
          actions: <Widget>[
          IconButton(
              icon: Icon( Icons.arrow_back_ios, color: Colors.blueGrey), 
              onPressed: ()=> Navigator.pushReplacementNamed(context, 'perfil')
        ),
          ]
        ),
        body: Stack(
          children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              _cambiarmail(),
              SizedBox(height: 40),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
              _cambiarcontrasena(),
            ]
          )
         )
       ]
      )
    );
  }

  Widget _cambiarmail(){

    return  Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cambiar email',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
              Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Ingresar nuevo email                 
                  labelText: 'Nuevo mail',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
              Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Repetir email              
                  labelText: 'Repetir mail',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
          ]
         )
       ]
      )
    );
  }

  Widget _cambiarcontrasena(){

    return  Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Cambiar Contraseña',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
              Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Ingresar nueva contraseña              
                  labelText: 'Nueva contraseña',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
              Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Repetir contraseña       
                  labelText: 'Repetir contraseña',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
          ]
         )
       ]
      )
    );
  }
}