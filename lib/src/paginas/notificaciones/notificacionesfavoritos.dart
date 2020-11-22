import 'package:flutter/material.dart';

class NotificacionesFavoritos extends StatefulWidget {
  @override
  _NotificacionesFavoritosState createState() => _NotificacionesFavoritosState();
}


// Esta seccion esta dedicada a las notificaciones que envien las empresas a aquellos usuarios que los tengan como favoritos, 
// El tipo de plantilla se establece por orden formando una imagen 
class _NotificacionesFavoritosState extends State<NotificacionesFavoritos> {
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
            'De tus Favoritos',
            style: Theme.of(context).textTheme.title, textScaleFactor: 1.2,
            ),
          SingleChildScrollView(
            child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    _tarjetaVoucherActivos1(),
                    SizedBox(height: 20),
                    _tarjetaVocuherActivo2(),
                    SizedBox(height: 20),
                    _tarjetaVocuherActivo3(),
                    SizedBox(height: 20),
                    _tarjetaVocuherActivo4(),
                    SizedBox(height: 20),
                    _tarjetaVoucherActivos1(),
                ],
              ),
            ),
       ],
      ),
    );
  }

  Widget _tarjetaVoucherActivos1(){

    final tarjeta = Container(
      height: 120,
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

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
          child: Stack(
            children:<Widget>[  
              Positioned( top: 85, left: -70.0, child: rectangulo1),
              Positioned( top: 85, left: -90.0, child: rectangulo),
              tarjeta,
              Positioned( top: 10, left: 270, child: logo),   
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: Column(
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
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
                      ),
              ),
            ],
          )
        ]
      ),
    );
  }
        
  Widget _tarjetaVocuherActivo2(){

    final tarjeta = Container(
      height: 120,
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
      
      transform: Matrix4.rotationZ(5.2),
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(30.0)
        )
      );

      final rectangulo1 = Container(
      height: 300.0,
      width: 250.0,
      
      transform: Matrix4.rotationZ(5.2),
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
    

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
          child: Stack(
            children:<Widget>[      
              Positioned( top: 65, left: -90.0, child: rectangulo1),
              Positioned( top: 65, left: -110.0, child: rectangulo),
              tarjeta,
              Positioned( top: 10, left: 270, child: logo),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 20, 20, 0),
                    child: Column(
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
                ),
              ),
                 ], 
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(145, 20, 0, 0),
                child: Container(
                  height: 80,
                  width: 140,
                  child: ClipRRect(
                    child: Image(
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
// Imagen PNG del producto                      
                      image: NetworkImage('https://betos.com.ar/wp-content/uploads/2019/08/Chimi.png')
                      ),
                      ),
                      ),
              ),
            ],
          )
    );
  }

  Widget _tarjetaVocuherActivo3(){

    final tarjeta = Container(
      height: 120,
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
      
      transform: Matrix4.rotationZ(5.9),
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(30.0)
        )
      );

      final rectangulo1 = Container(
      height: 300.0,
      width: 250.0,
      
      transform: Matrix4.rotationZ(5.9),
      decoration: BoxDecoration(
        color: Colors.blue[300],
        borderRadius: BorderRadius.circular(30.0)
        )
      );

      final rectangulo2 = Container(
      height: 300.0,
      width: 250.0,
      
      transform: Matrix4.rotationZ(6.5),
      decoration: BoxDecoration(
        color: Colors.blue[200],
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

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
          child: Stack(
            children:<Widget>[  
              Positioned( top: 35, left: -125.0, child: rectangulo1),
              Positioned( top: 35, left: -135.0, child: rectangulo),
              Positioned( top: -20, left: 300.0, child: rectangulo2),
              tarjeta,
              Positioned( top: 5, left: 135, child: logo),   
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: Column(
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Container(
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
                  ),
              ),
            ],
          )
        ]
      ),
    );


  }

  Widget _tarjetaVocuherActivo4(){

    final tarjeta = Container(
      height: 120,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blueGrey[200],
            width:0.9,
              ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)
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

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
          child: Stack(
            children:<Widget>[  
              Positioned( top: 10, left: 95.0, child: rectangulo1),
              Positioned( top: 10, left: 115.0, child: rectangulo),
              tarjeta,
              Positioned( top: 5, left: 145, child: logo),   
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 20, 10),
                    child: Column(
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
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Container(
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
                  ),
              ),
            ],
          )
        ]
      ),
    );


  }
}

