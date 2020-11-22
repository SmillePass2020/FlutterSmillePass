import 'package:flutter/material.dart';

class MenuLateralUsuarios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child:
            _crearFondo(context),
          ),

          ListTile(
            leading: Icon(Icons.home, color: Colors.blue[200]),
            title: Text('Home', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)), 
            onTap: ()=> Navigator.pushReplacementNamed(context, 'home')
          ),
          ListTile(
            leading: Icon(Icons.linear_scale, color: Colors.blue[200]), 
            title: Text('Progreso', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            onTap: ()=> Navigator.pushReplacementNamed(context, 'progreso')
          ),
          ListTile(
            leading: Icon(Icons.format_list_numbered_rtl, color: Colors.blue[200]),
            title: Text('Sugeridos', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            onTap: ()=> Navigator.pushReplacementNamed(context, 'sugeridos')
          ),
          ListTile(
            leading: Icon(Icons.favorite, color: Colors.blue[200]),
            title: Text('Favoritos', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            onTap: ()=> Navigator.pushReplacementNamed(context, 'favoritos')
          ),
          ListTile(
            leading: Icon(Icons.local_activity, color: Colors.blue[200]),
            title: Text('Mis Cupones', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            onTap: ()=> Navigator.pushReplacementNamed(context, 'miscupones')
          ),
          ListTile(
            leading: Icon(Icons.person, color: Colors.blue[200]),
            title: Text('Mi Perfil', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            onTap: ()=> Navigator.pushReplacementNamed(context, 'perfil')
          ),
          ListTile(
            leading: Icon(Icons.contact_phone, color: Colors.blue[200]),
            title: Text('Ayuda en Linea', style: TextStyle(fontSize: 18.0, letterSpacing: 1.0)),
            onTap: ()=> Navigator.pushReplacementNamed(context, 'ayuda')
          ),

        ],
      ),
    );
                
              
  }

  Widget _crearFondo(BuildContext context){

    final fondo = Container(
      decoration: BoxDecoration(
        color: Colors.white 
        ),
    );

    return Stack(
      children: <Widget>[
        fondo,
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: Column(
            children: <Widget>[
              //Iamgen de perfil de Gmail o la puede cambiar en "mi perfil"
              CircleAvatar(
                backgroundImage: NetworkImage('https://los40.cl/wp-content/uploads/2020/03/will-smith-768x432.jpg'),
                radius: 40.0,
              ),
              SizedBox( height: 10.0, width: double.infinity),
              // Nombre y apellido que registro 
              Text('Juan Moyano', style: TextStyle( color: Colors.black, fontSize: 20.0))
            ],
          ),
        )
      ],
    );

  }
}