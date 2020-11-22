import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/paginas/notificaciones/notificacionesfavoritos.dart';
import 'package:smilepass_usuarios/src/paginas/notificaciones/notificacionesgeneral.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class HomeNotificacionesPage extends StatefulWidget {
  @override
  _HomeNotificacionesPageState createState() => _HomeNotificacionesPageState();
}

class _HomeNotificacionesPageState extends State<HomeNotificacionesPage> {

  int currentIndex = 0;
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
                  text: 'Notificaciones', 
                  style: TextStyle(
                    color: Colors.blueGrey),
                ),
              ]
            ),
          ), 
        ),
        drawer: MenuLateralUsuarios(),
        body: _crearLista(currentIndex),
        bottomNavigationBar: _bottomNavigationBar(),
      
    );
  }

  Widget _crearLista( int paginaActual ){

    switch( paginaActual ) {

      case 0: return NotificacionesFavoritos();
      case 1: return NotificacionesGenerales();
      
      default:
      return NotificacionesFavoritos();
    }

  }

  Widget _bottomNavigationBar(){

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex = index;
        });
      },
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite, color: Colors.grey),
        title: Text('Favoritos',
        style: TextStyle(
          color:Colors.grey),
          )
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.dehaze, color: Colors.grey),
        title: Text('General',
        style: TextStyle(
          color:Colors.grey),)
      ),
     ],
    );
  }

}