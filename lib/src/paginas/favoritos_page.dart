import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

//Cada vez que el local suba una nueva promocion, los usuarios que lo tengan al local como favoritos recibiran una notificaicon
//Para que le local pueda ser seleccionado como "Favorito", debe ser premium (pagar el monto mesual ya especificado/primeros 3 meses de prueba como premium)
class FavoritosUsuariosPage extends StatefulWidget {
  @override
  _FavoritosUsuariosPageState createState() => _FavoritosUsuariosPageState();
}

class _FavoritosUsuariosPageState extends State<FavoritosUsuariosPage> {

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
                  text: 'Favoritos', 
                  style: TextStyle(
                    color: Colors.white),
                ),
              ]
            ),
          ), 
        ),
        drawer: MenuLateralUsuarios(),
        floatingActionButton: _botonNavegar(context),
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
                  stops: [0.06,0.15,0.25,1]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _categorias(context),
              SizedBox(height: 20.0),
              _locales()
            ]
           )
         )
       ]
      )  
    );
  }

  Widget _botonNavegar(BuildContext context){

    return FloatingActionButton.extended(
      backgroundColor: Colors.blue[200],
      icon: Icon( Icons. explore),
      label: Text('Explorar'),

//Boton que lleve al mapa
      onPressed: null);
  }

  //Que sirvan de botonera para filtrar las sugerencias
  Widget _categorias(BuildContext context){

    return Container(
        margin: new EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
//Texto fijo                 
              child: Text('Filtra por categoria',
                style: Theme.of(context).textTheme.title, textScaleFactor: 1
                ),
                ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget>[
                    Column(
                    children: <Widget>[
                      
// Icono Comida
                      GestureDetector(  
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO(204, 153, 255, 1),
                          child: Icon(Icons.restaurant_menu, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Comida',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),    

                    ]
                    ),
// Icono Viajes
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){},
                            child: CircleAvatar(
                              radius: 18.0,
                              backgroundColor: Color.fromRGBO(255, 224, 17, 1),
                              child: Icon(Icons.flight_takeoff, color: Colors.white, size: 22),
                            ),
                          ),
                      SizedBox(height:5.0),
                      Text('Viajes',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ), 
                      ],
                      ),  
// Icono Tecno
                      Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO(64, 64, 64, 1),
                          child: Icon(Icons.phonelink, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Tecno',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),    
                    ]
                      ),
// Icono Ropa
                      Column(
                    children: <Widget>[  
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO(255, 102, 102, 1),
                          child: Icon(Icons.watch, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Ropa',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),   
                    ]
                      ),

  // Icono Salud 
                    Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO(102, 178, 255, 1),
                          child: Icon(Icons.favorite, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Salud',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),
                    ]
                    ),    
// Icono Hogar
                      Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO(102, 204, 0, 1),
                          child: Icon(Icons.home, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Hogar',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),   
                     ],
                    ),  
// Icono Eventos                  
                    Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO( 255 , 162, 0, 1),
                          child: Icon(Icons.theaters, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Eventos',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),    
                    ]
                    ),
  // Icono Otros
                      Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){},
                        child: CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Color.fromRGBO(255, 153, 204, 1),
                          child: Icon(Icons.style, color: Colors.white, size: 22),
                        ),
                      ),
                      SizedBox(height:5.0),
                      Text('Otros',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                       ),
                      ),   
                     ],
                    ),  
                  ],
            ),
          ]
        )
    );
  }

//Lista de todos los locales que sigue
  Widget _locales(){

    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Container(
                alignment: Alignment.center,
                child:Column(
                children: <Widget>[
                  Text(
                  'Tus Locales Favoritos',
                  style: Theme.of(context).textTheme.title,
                  ),
                ],
               ),
              ),
              SizedBox(height: 10.0),
              Column(
            children:<Widget>[
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _localesimagen(context),
                  _localesimagen(context),
                ],
             ),
             SizedBox(height: 10),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _localesimagen(context),
                  _localesimagen(context),
                ],
             ),
             SizedBox(height: 10),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _localesimagen(context),
                  _localesimagen(context),
                ],
             ),
             SizedBox(height: 10),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _localesimagen(context),
                  _localesimagen(context),
                ],
             ),
             SizedBox(height: 10),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _localesimagen(context),
                  _localesimagen(context),
                ],
             ),
           ]
          )   
        ],
      )
    );
  }

  Widget _localesimagen(BuildContext context){

  return GestureDetector(
//Redireccionar al perfil del local donde se van a ver todos los productos del local y su direccion    
    onTap: ()=> Navigator.pushReplacementNamed(context, 'seleccionlocal'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.blueGrey[100],
                width:0.9,
              ),
                ),
        child: Row(
          children: <Widget>[
            Column(
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 160,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image(
                        fit: BoxFit.contain,
                        alignment: Alignment.topCenter,
//Foto del local (pedir que sea apaizada para que encaje de mejor manera)                        
                        image: NetworkImage('https://www.america-retail.com/static//2020/03/FireShot-Capture-1600-McDonalds-Burger-King-Coca-Cola-y-Audi-_cambian_-para-combatir-el_-economiasustentable.com_.png')),
                        ),
                        ),
                        Column(
                          children: <Widget>[          
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Column(
                                children: <Widget>[
// Nombre de la empresa
                                  Text('McDonald', style: Theme.of(context).textTheme.title, textScaleFactor: 0.8,),
// Direccion
                                  Text('General Paz 153', style: TextStyle(fontSize: 16.0),),
                              ],
                            ),
                         ),
                      ],
                    ),   
                  ],
                ),
              ],
            ),
         )
      );
  }            
}