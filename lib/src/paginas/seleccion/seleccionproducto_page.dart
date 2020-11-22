import 'package:flutter/material.dart';

class SeleccionProductoPage extends StatelessWidget {
  @override

//IMAGEN SIMILAR O IGUAL A MERCADO PAGO CUANDO SE SELECCIONA UN DESCUENTO

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(         
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Voucher Promocional', style: TextStyle(color: Colors.blueGrey)),
          leading: IconButton(
            color: Colors.blueGrey,
//Volver a la pagina anterior
            onPressed:(){},
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
//Barra con informacion basica
              _crearprimerbarratitulo(context),
              SizedBox(height:20.0),  
              _crearMapa(context),
              SizedBox(height:20.0), 
              _crearComoFunciona(context),
              SizedBox(height:20.0),
              _crearComoloUso(context),
              SizedBox(height:20.0),
              _crearTerminosyCondiciones(),
              SizedBox(height:20.0),
            ],
          ),
        ),
          ],
        ),
    );
  }
//Boton aceptar el voucher con sus terminos y condiciones
  Widget _botonNavegar(BuildContext context){ 

    return FloatingActionButton.extended(
      backgroundColor: Colors.blue[200],
      icon: Icon( Icons.check_circle_outline),
      label: Text('Lo Quiero'),

//Boton que lleve a la generacion del voucher
      onPressed: ()=> Navigator.pushReplacementNamed(context, 'voucherlisto'),
    );
  }

//Barra con informacion basica
  Widget _crearprimerbarratitulo(BuildContext context){

    return Column(
      children: <Widget>[
        Container(
                width: 600,
                height: 160,
                decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
//Imagen de la promocion          
              image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')
            )
          ),
                child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [ 
                Colors.grey.withOpacity(0.65),
                Colors.grey.withOpacity(0.65)
                ],
              ),
            ),
            child:Padding(
              padding: const EdgeInsets.fromLTRB(15, 60, 15, 10),
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Expanded(
                    child: RichText(
                      text: TextSpan( 
                        children: [
                          TextSpan(
//Nombre de la promocion                            
                  text:'25% Cuarto de Libra \n',
                  style: Theme.of(context).textTheme.title, 
                  ),
                    ],
                  ),
                  ),
                  )
                ]
               ),
            )
          )
        ),
        Container(
          height: 40,
          width: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,  
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(5.0, 5.0),
              blurRadius: 10.0
            ),      
          ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              ),
              border: Border.all(
            color: Colors.blueGrey[100],
            width:0.9,
          ),

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
        )
      ],
    );
  }

//Barra con la ubicacion del local
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

//Barra explicando el porcentaje o valor del voucher, el nombre y su limitacion
  Widget _crearComoFunciona(BuildContext context){

  return Container(
    margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,   
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Beneficio',
                style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                ),
            ),
          ),
          Divider(),
          Container(

            alignment: Alignment.center,
            height: 70,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Row(
                  children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: Container(
//porcentaje del descuento o 2x1/3x2/...                              
                              child: Text('25% ',
                              style: Theme.of(context).textTheme.title, textScaleFactor: 1.2,
                              ),
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.fromLTRB(80, 0, 0, 10),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Text('Cuarto de Libra \n', 
                                  style: Theme.of(context).textTheme.title,
                                  ),
//Informacion del limite del beneficio, si es por 1 compra o por un monto minimo de compra o un monto maximo.                                  
                                  Text('Limitado a una compra')
                                ],
                              ),
                            ),
                          ),
                  ],
                ),
              )
          ),
        ]
      )
    );
  }

//Barra explicando el uso d elos voucher (uso general)
  Widget _crearComoloUso(BuildContext context){
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
    decoration: BoxDecoration(
        shape: BoxShape.rectangle,   
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.blueGrey[100],
          width:0.9,
        ),
    ),    
    child:Row(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
                height: 100,
                width: 10.0,
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )
                ),
              ),

              Container(
                width: 300,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child:
                      Text(
//Texto fijo (creo)                        
                        'Presenta el codigo QR antes de efectuar el pago para obtener el beneficio.',
                      style: TextStyle(fontSize: 16.0),
                      textAlign: TextAlign.justify,),
                  ),
          ]
       )
    );
  }

  Widget _crearTerminosyCondiciones(){

    return Container(
      width: 300,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child:
            Text(
// Link con los terminos y condiciones desarrollados por la empresa.
              'Terminos y Condiciones',
            style: TextStyle(fontSize: 16.0, color: Colors.blue),
            textAlign: TextAlign.justify,),
        );
  }

}