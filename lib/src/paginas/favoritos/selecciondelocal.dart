import 'package:flutter/material.dart';

class SeleccionLocalesPage extends StatefulWidget {
  @override
  _SeleccionLocalesPageState createState() => _SeleccionLocalesPageState();
}

class _SeleccionLocalesPageState extends State<SeleccionLocalesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(         
          backgroundColor: Colors.white,
          elevation: 0,
//Nombre de la empresa          
          title: Text('McDonalds', style: TextStyle(color: Colors.blueGrey)),
          leading: IconButton(
            color: Colors.blueGrey,
//Volver a la pagina anterior
            onPressed:()=> Navigator.pushReplacementNamed(context, 'favoritos'),
            icon: Icon(
              Icons.arrow_back,),
          ),
          actions: <Widget>[
             IconButton(
              icon: Icon( Icons.share, color: Colors.blueGrey), 
              onPressed: (){},
             ),
          ],
        ),
        floatingActionButton: _botonNavegar(context),
        body: Stack(
          children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearprimerbarratitulo(context),
              SizedBox(height:20.0), 
              _tarjetas(),
              SizedBox(height:20.0),  
              _crearMapa(context),
            ]
          )
        )
          ]
        )
    );
  }

  //Boton aceptar el voucher con sus terminos y condiciones
  Widget _botonNavegar(BuildContext context){ 

    return FloatingActionButton.extended(
      backgroundColor: Colors.blue[200],
      icon: Icon( Icons.check_circle_outline),
      label: Text('Seguir'),
      onPressed: (){},
    );
  }

  Widget _crearprimerbarratitulo(BuildContext context){

    return Column(
      children: <Widget>[
        Container(
                width: 600,
                height: 165,
                decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
//Imagen de la promocion          
              image: NetworkImage('https://www.america-retail.com/static//2020/03/FireShot-Capture-1600-McDonalds-Burger-King-Coca-Cola-y-Audi-_cambian_-para-combatir-el_-economiasustentable.com_.png')
            )
          ),
        ),
        Container(
          height: 40,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.rectangle,  
             ),
          child: Column(
            children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
//Nombre empresa y direccion   
                  child: Text('McDonalds - General Paz 153',
                  style: Theme.of(context).textTheme.title, 
                  ),
                )
            ]
          ),
        ),
        Container(
          height: 40,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.rectangle,  

            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              ),

          ),
          child: Column(
            children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
//Dias y horario de apertura
                  child: Text('Lunes a Viernes - 8:00 a 21:00 / Sabado - 8:00 a 14:00',
                  style: TextStyle(
                    fontSize: 15
                  )
                  ),
                )
            ]
          ),
        ),
      ],
    );
  }

  Widget _tarjetas(){

     return Container(
       margin: new EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: <Widget>[
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ]
                  ),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ]
                  ),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _tarjetaVoucherActivos(context),
                        _tarjetaVoucherActivos(context),
                      ]
                  ),
              ]
            ),
     );
  }

  Widget _tarjetaVoucherActivos(BuildContext context){

    return GestureDetector(
    onTap: (){},
      child: Container(
        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.blueGrey[100],
                width:0.9,
              ),
                ),
        child: FittedBox(
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
                  child: Column(
            children: <Widget>[
              Container(
                height: 90,
                width: 160,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Image(
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                    image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')
                    ),
                    ),
                    ),
                    Container(
                      height: 50,
                child: Column(
                  children: <Widget>[
                    Padding(
                    padding: const EdgeInsets.fromLTRB(5, 8, 5, 0),
                    child:  Text('25% Cuarto de Libra', 
                    style: Theme.of(context).textTheme.title, textScaleFactor: 0.75
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child:  Text('Del 31/05 al 31/06', 
                    style: TextStyle(
                      fontSize: 14.0),
                      textAlign: TextAlign.justify,
                      ),
                    ),
                  ]
                )
                  ),
                ]
              ),   
          )
        )
          ),
        );
      
  }

  Widget _crearMapa(BuildContext context){

    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,  
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
              blurRadius: 10.0
            ),      
          ],
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.blueGrey[100],
            width:0.9,
          ),
      ),
          child: Column(
            children: <Widget>[

              Container(
                alignment: Alignment.center,
                height: 35,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
//Texto diciendo a cuantos m esta el local                  
                  child: Text('Local ubicado a ... metros',
                    style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                    ),
                ),
              ),
                Container(
//Mapa mostrando la ubicacion del local y la ubicacion actual (si se aprieta se ingrese al mapa y poder recibir indicaciones para llegar)                  
                  color: Colors.blueAccent,
                  height: 200,
                ),
                Container(
                alignment: Alignment.center,
                height: 35,
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
//Text con la direccion                  
                  child: Text('Av. Velez Sarsfield 23, Centro, Capital, Cordoba',
                    style: Theme.of(context).textTheme.title, textScaleFactor: 0.6
                    ),
                ),
              ),
            ],
      )
    );
  }
}