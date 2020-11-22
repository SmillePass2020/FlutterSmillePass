import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';


class HomePageUsuarios extends StatefulWidget {
  @override
  _HomePageUsuariosState createState() => _HomePageUsuariosState();
}

class _HomePageUsuariosState extends State<HomePageUsuarios> {
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
                  text: 'SmilePass', 
                  style: TextStyle(
                    color: Colors.white),
                ),
              ]
            ),
          ), 
          actions: <Widget>[
             IconButton(
              icon: Icon( Icons.library_add, color: Colors.white), 
              onPressed: () => _alertaEscaneo(context),
             ),
             IconButton(
              icon: Icon( Icons.notifications, color: Colors.white), 
              onPressed: ()=> Navigator.pushReplacementNamed(context, 'notificaciones'),
             ),
          ],
        ),
        drawer: MenuLateralUsuarios(),
//Boton que ingresa al mapa y se exploran los locales alrededor
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
                  stops: [0.1,0.25,0.45,0.50]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _barrabuscar(),
              SizedBox(height: 15.0),
              _categoria(context),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
//Fila adaptada que aparece cuando aparecen vouchers activos              
              _voucherActivos(context),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
              _sugeridos(context),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
              _tendecias(context),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
              _top10(context),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
              _nuevos(context),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
            ],
          ),
        ),
          ],
        ),
    );
  }

  Widget _alertaEscaneo(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){

        return AlertDialog(
         shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0) ),
          title: Text('Escanea Codigo QR'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Busca locales aderidos y conoce sus descuentos exclusivos'),
            ],      
          ), 
          actions: <Widget>[
            FlatButton(
              child:  Text('Ok'),
              //Abrir camara y escanear codigo de locales
              onPressed: (){},
            ),
          ], 
        );
       }
    );
   }

  Widget _barrabuscar(){

    return Column(
      children: <Widget>[
        Container(
          height: 50,
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.white
            ),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search, color: Colors.white,),
              hintText: 'Buscar local',
              hintStyle: TextStyle(
                color: Colors.white),
              )
            ),
          )
      ]
    );
  }

//Categorias
  Widget _categoria(BuildContext context){

    return Container(
      margin: new EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:<Widget>[
            Column(
            children: <Widget>[
  // Icono Comida
              GestureDetector(  
                onTap: ()=> Navigator.pushReplacementNamed(context, 'comida' ),
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(204, 153, 255, 1),
                  child: Icon(Icons.restaurant_menu, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Comida',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),    
              SizedBox(height: 15.0),
  // Icono Viajes
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(255, 224, 17, 1),
                  child: Icon(Icons.flight_takeoff, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Viajes',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),   
             ],
            ), 
            Column(
            children: <Widget>[
  // Icono Tecno
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(64, 64, 64, 1),
                  child: Icon(Icons.phonelink, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Tecno',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),    
              SizedBox(height: 15.0),
  // Icono Ropa
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(255, 102, 102, 1),
                  child: Icon(Icons.watch, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Ropa',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),   
             ],
            ),  
            Column(
            children: <Widget>[
  // Icono Salud
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(102, 178, 255, 1),
                  child: Icon(Icons.favorite, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Salud',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),    
              SizedBox(height: 15.0),
  // Icono Hogar
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(102, 204, 0, 1),
                  child: Icon(Icons.home, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Hogar',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),   
             ],
            ),  
            Column(
            children: <Widget>[
  // Icono Eventos
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO( 255 , 162, 0, 1),
                  child: Icon(Icons.theaters, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Eventos',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),    
              SizedBox(height: 15.0),
  // Icono Otros
              GestureDetector(
                onTap: (){},
                child: CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color.fromRGBO(255, 153, 204, 1),
                  child: Icon(Icons.style, color: Colors.white, size: 30),
                ),
              ),
              SizedBox(height:10.0),
              Text('Otros',
                style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
               ),
              ),   
             ],
            ),  
          ],
         ),
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

//Fila adaptada que aparece cuando aparecen vouchers activos
  Widget _voucherActivos(BuildContext context){

  return Container(
    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Promociones Activas',
            style: Theme.of(context).textTheme.title,
            ),
          SingleChildScrollView(
          scrollDirection: Axis.horizontal,
            child: Row(
                  children: <Widget>[
                    _tarjetaVoucherActivos(),
                    SizedBox(width: 15.0),
                    _tarjetaVoucherActivos(),
                    SizedBox(width: 15.0),
                    _tarjetaVoucherActivos(),
                ],
              ),
            ),
       ],
      ),
    );
  }

  Widget _tarjetaVoucherActivos(){

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 120,
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')
          )
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [ 
              Colors.grey.withOpacity(0.7),
              Colors.blueAccent.withOpacity(0.85)
              ],
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Icon(
                  Icons.notifications_active,
                  size: 80.0,
                  color: Colors.white,
                )
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
//Nombre de la Promocion                                      
                        text:'25% Cuarto de Libra \n',
                        style: Theme.of(context).textTheme.title
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
            ],
          )
        ),
      ),
    );
  }

  Widget _tendecias(BuildContext context){

    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        GestureDetector(
          onTap: (){},
            child: Container(
              child:Column(
              children: <Widget>[
                Text(
                  'Tendencia',
                    style: Theme.of(context).textTheme.title,
                  ),
              ],
             ),
            ),
           ),
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _tarjetas2(context),
                SizedBox(width: 15.0),
                _tarjetas2(context),
                SizedBox(width: 15.0),
                _tarjetas2(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sugeridos(BuildContext context){

        return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        GestureDetector(
          onTap: (){},
            child: Container(
              child:Column(
              children: <Widget>[
                Text(
                'Sugeridos para vos',
                style: Theme.of(context).textTheme.title,
                ),
              ],
             ),
            ),
           ),
        SizedBox(height: 10.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              _tarjetas1(context),
              SizedBox(width: 15.0),
              _tarjetas1(context),
              SizedBox(width: 15.0),
              _tarjetas1(context),
            ],
          ),
        ),
      ],
      ),
    );
  }

  Widget _tarjetas1(BuildContext context){

  return GestureDetector(
    onTap: (){},
      child: Container(
        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blueGrey[100],
                width:0.9,
              ),
                ),
        child: FittedBox(
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
                  child: Column(
            children: <Widget>[
              Container(
                height: 140,
                width: 240,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image(
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                    image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')),
                    ),
                    ),
                    Column(
                      children: <Widget>[
                    Row(
                  children: <Widget>[
                    Container(
                      height: 50,
                width: 50,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(
                    fit: BoxFit.contain,
                    image: NetworkImage('https://infonegocios.biz/uploads/Mc-InfoNegocios-1.jpg'))),
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
                 ],
                ),   
                Text('Del 31/05 al 31/06', 
                  style: TextStyle(
                    fontSize: 12.0),
                    textAlign: TextAlign.justify,
                    ),
              ],
          ),
            ],
        ),
      ),
        ),
      ),
       );
  }            

  Widget _top10(BuildContext context){

    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          GestureDetector(
            onTap: (){},
              child: Container(
                alignment: Alignment.center,
                child:Column(
                children: <Widget>[
                  Text(
                  'Top 10 actuales',
                  style: Theme.of(context).textTheme.title,
                  ),
                ],
               ),
              ),
             ),
              SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                _tarjetas1(context),
                SizedBox(width: 15.0),
                _tarjetas1(context),
                SizedBox(width: 15.0),
                _tarjetas1(context),
              ],
            ),
          ),
        ],
        ),
    );
    
  }

  Widget _nuevos(BuildContext context){

    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             GestureDetector(
            onTap: (){},
              child: Container(
                alignment: Alignment.center,
                child:Column(
                children: <Widget>[
                  Text(
                  'Nuevos',
                  style: Theme.of(context).textTheme.title,
                  ),
                ],
               ),
              ),
             ),
              SizedBox(height: 10.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        _crearImagen(),
                        _crearDescripcion(),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        _crearImagen(),
                        _crearDescripcion(),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        _crearImagen(),
                        _crearDescripcion(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }

  Widget _crearImagen(){

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Image(
        image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6'),
        height: 150.0,        
      ),
    );
  }

  Widget _crearDescripcion(){
    
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white
      ),
      child: Column(
        children: <Widget>[
          // Titulo del producto
          Text('25% Cuarto de Libra', style: TextStyle(fontSize: 11.0),),
          // Nombre Empresa
          Text('McDonalds', style: TextStyle(fontSize: 18.0),),
          // Fecha de validez
          Text('Del 31/05 al 31/06', style: TextStyle(fontSize: 11.0),),
       ],
      ),
    );

  }

  Widget _tarjetas2(BuildContext context){

    return GestureDetector( 
      //Redireccion al voucher
      onTap: ()=> Navigator.pushReplacementNamed(context, 'seleccion'),
          child: Container(
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.blueGrey[100],
                  width:0.9,
                ),
          ),
           child: FittedBox(
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              child: Column(
                children:<Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Column(
                            children: <Widget>[
                              // Titulo del producto
                              Text('25% Cuarto de Libra', style: Theme.of(context).textTheme.title, textScaleFactor: 0.8,),
                              // Nombre Empresa y Direccion
                              Text('McDonalds - General Paz 153', style: TextStyle(fontSize: 10.0),),
                              // Fecha de validez
                              Text('Del 31/05 al 31/06', style: TextStyle(fontSize: 12.0),textAlign: TextAlign.justify,),
                          ],
                          ),
                    ),
                  ),  
                  Container(
                    width:240,
                    height: 140,
                    child: ClipRRect(
                      borderRadius: new BorderRadius.circular(10.0),
                      child: Image(
                        fit: BoxFit.contain,
                        alignment: Alignment.bottomCenter,
                        // imagen promocional
                        image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}