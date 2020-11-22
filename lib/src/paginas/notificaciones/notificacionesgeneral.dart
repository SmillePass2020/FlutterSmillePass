import 'package:flutter/material.dart';

class NotificacionesGenerales extends StatefulWidget {
  @override
  _NotificacionesGeneralesState createState() => _NotificacionesGeneralesState();
}

class _NotificacionesGeneralesState extends State<NotificacionesGenerales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _voucherActivos(context),

            ]
          )
        )
    );
  }

  Widget _voucherActivos(BuildContext context){

  return Container(
    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Generales',
            style: Theme.of(context).textTheme.title, textScaleFactor: 1.2,
            ),
          SingleChildScrollView(
            child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    _tarjetaVoucherActivos1(),
                    SizedBox(height: 20),
                ],
              ),
            ),
       ],
      ),
    );
  }

  Widget _tarjetaVoucherActivos1(){

    final tarjeta = Container(
      height: 100,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey[100],
            width:0.9,
              ),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
          )  
      ),
     )
    );

    final rectangulo = Container(
      height: 300.0,
      width: 250.0,
      
      transform: Matrix4.rotationZ(5.5),
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(30.0)
        )
      );

      final rectangulo1 = Container(
      height: 300.0,
      width: 250.0,
      
      transform: Matrix4.rotationZ(5.5),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(30.0)
        )
      );
    
    final logo = Container(
      height: 35.0,
      width: 60.0,
      child: ClipRRect(
        child: Image(
          fit: BoxFit.contain,
          alignment: Alignment.topCenter,
// Imagen PNG del logo          
          image: NetworkImage('https://www.freepnglogos.com/uploads/mcdonalds-png-logo/mcdonalds-png-original-logo-hd-0.png')
          ),
        ),
      );

      final texto = Column(
        children: <Widget>[
// Valor descuento
          Text('25% ', style: Theme.of(context).textTheme.title, textScaleFactor: 1.8,),
// Nombre Producto                       
          Text('Cuarto de Libra', style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,),
// Nombre Empresa 
          Text('McDonalds', style: TextStyle(fontSize: 12.0),),
// Direccion                        
          Text('General Paz 153', style: TextStyle(fontSize: 12.0),
        ),
    ],
  );

  final imagen = Container(
  height: 100,
  width: 160,
  child: ClipRRect(
    child: Image(
      fit: BoxFit.fill,
      alignment: Alignment.topCenter,
// Imagen PNG del producto                      
      image: NetworkImage('https://d701vexhkz032.cloudfront.net/media/images/menu-content/AR/sandwiches-de-carne/doblecuartodelibra.png')
      ),
    ),
  );

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
          child: Column(
            children: <Widget>[
              Stack(
                children:<Widget>[  
                  tarjeta,
                  Positioned( top: 85, left: -70.0, child: rectangulo1),
                  Positioned( top: 85, left: -90.0, child: rectangulo),
                  Positioned( top: 10, left: 270, child: logo),   
                  Positioned( top: 8, left: 20, child: texto),
                  Positioned( top: 0, left: 120, child: imagen),
                  ]
                ),
                  Container(
                    margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Text('Terminos y Condiciones', style: TextStyle(fontSize: 18.0, color: Colors.blue),
                 )
               ),
            ],
          ),
    );
  }
}