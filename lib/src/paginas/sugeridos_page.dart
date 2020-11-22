import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';


class SugeridosUsuariosPage extends StatelessWidget {
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
                  text: 'Sugeridos', 
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
                  stops: [0.03,0.045,0.1,0.15]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _categorias(context),
              SizedBox(height: 20.0),
              _cuadricula(context)
            ]
           )
         )
       ]
      )
    );
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

//Cuadricula de productos Sugeridos (area de venta), se filtrara segun la categoria
  Widget _cuadricula(BuildContext context){

    return Container(
            child: Column(
              children: <Widget>[
                      Row(

                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ],
                    ),
                    Row(

                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ],
                    ),
                    Row(

                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ],
                    ),
                    Row(

                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ],
                    ),
                    Row(

                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ],
                    ),
                    Row(

                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ],
                    ),
              ],
            )
    );
  }
  
//Caracteristicas de los voucher
  Widget _tarjetaVoucherActivos(BuildContext context){

    return  
    GestureDetector(
      onTap: (){},
          child: Container(

        height: 100,
        width: 120,
        decoration: BoxDecoration(

          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')
          )
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(

            gradient: LinearGradient(
              colors: [ 
              Colors.grey.withOpacity(0.6),
              Colors.grey.withOpacity(0.6)
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
                child:RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
//Nombre de la Promocion                                      
                          text:'25% Cuarto de Libra \n',
                          style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            ),
                        ),
                        TextSpan(
//Nombre empresa                                      
                          text:"Mc Doland's \n",
                          style: TextStyle(
                            fontSize: 10),
                        ),
                        TextSpan(
//Direccion (calle y altura)                                      
                          text:"General Paz 153",
                          style: TextStyle(
                            fontSize: 10),
                        ),
                      ]
                    )
                  )
            ),
        ),
      )
    );
  }
}