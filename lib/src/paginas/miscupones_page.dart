import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class CuponesUsuariosPage extends StatelessWidget {
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
                  text: 'Mis Cupones', 
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
                  stops: [0.06,0.15,0.25,1]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _categorias(context),
              SizedBox(height: 20.0),
              _voucheractivos(context),
              SizedBox(height: 10.0),
              _voucheractivos(context),
              SizedBox(height: 10.0),
              _voucheractivos(context),
              SizedBox(height: 10.0),
              _voucheractivos(context),
              SizedBox(height: 10.0),
              _voucheractivos(context),

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

//Lista de Vouchers activos ordenados segun la fecha de vencimiento
 Widget _voucheractivos(BuildContext context){

   return GestureDetector(
//Leer comentario en aceptacionproducto_page     
     onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
     child: Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
       decoration: BoxDecoration(
//Color de fondo en relacion a su categoria         
         color: Color.fromRGBO(204, 153, 255, 0.6),
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: Colors.black,
            width:0.9,
          ),
         ),
         child: Row(
           children:<Widget>[
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  fit: BoxFit.contain,
//Logo de la empresa                  
                  image: NetworkImage('https://infonegocios.biz/uploads/Mc-InfoNegocios-1.jpg'))),
                    ),
                ),                
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Column(
                    children: <Widget>[
// Titulo del producto
                      Text('25% Cuarto de Libra', style: Theme.of(context).textTheme.title, textScaleFactor: 0.8,),
// Nombre Empresa y Direccion
                      Text('McDonalds - General Paz 153', style: TextStyle(fontSize: 10.0),),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(left:40.0),
                  child: Column(
                    children: <Widget>[
                      Text('Vencimiento', style: TextStyle(fontSize: 10.0),),
//Fecha de vencimiento
                      Text('31/06', style: Theme.of(context).textTheme.title, textScaleFactor: 0.8,),
                  ],
                ),
              ),
            ],
         ),
     ),
   );
 } 
}