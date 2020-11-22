import 'package:flutter/material.dart';

class CuentaSmartPassPage extends StatefulWidget {
  @override
  _CuentaSmartPassPageState createState() => _CuentaSmartPassPageState();
}

class _CuentaSmartPassPageState extends State<CuentaSmartPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(         
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('SmartPass', style: TextStyle(color: Colors.blueGrey)),
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
              _crearBeneficios(context),
              SizedBox(height:20.0),
              _barracodigoinvitado(),
              SizedBox(height:10.0),
              _crearComoFunciona(context),
              SizedBox(height:20.0),
              _crearTerminosyCondiciones(),
              SizedBox(height:60.0),
            ],
          ),
        ),
      ],
     ),
    );
  }

  Widget _botonNavegar(BuildContext context){ 

    return FloatingActionButton.extended(
      backgroundColor: Colors.blue[200],
      icon: Icon( Icons.check_circle_outline),
      label: Text('Quiero SmartPass'),

//Boton que lleve a la generacion del voucher
      onPressed: ()=> Navigator.pushReplacementNamed(context, 'perfil'),
    );
  }

  Widget _crearprimerbarratitulo(BuildContext context){

    return Column(
      children: <Widget>[
        Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
//Imagen de la promocion          
              image: NetworkImage('https://previews.123rf.com/images/jovanmandic/jovanmandic1804/jovanmandic180400399/100064432-happy-friends-shopping-young-friends-enjoying-shopping-in-the-city-holding-shopping-bags-and-coffee-.jpg')
            )
          ),
                child: DecoratedBox(
            decoration: BoxDecoration(
            ),
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
                  child: Text('Disfruta mas con SmartPass',
                  style: Theme.of(context).textTheme.title, 
                  ),
                )
            ]
          ),
        )
      ],
    );
  }

  Widget _crearBeneficios(BuildContext context){

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
                  child: Text('Cuenta SmartPass',
                    style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                    ),
                ),
              ),
                Container(
            alignment: Alignment.center,
            height: 180.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.blueGrey[100],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )
          ),
          
            child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5), 
//Beneficios al ser parte de SmartPass                             
                child: Text(' • Sube 1 nivel automaticamente \n • Recibir beneficios exclusivos \n • Multiplica x 2 todos los puntos que obtengas \n • Acceso a los HOTSALE',
                  style: TextStyle(fontSize: 20.0),textAlign: TextAlign.start
                  ),
              ),
            ),
        ],
      )
    );
  }

  Widget _barracodigoinvitado(){

    return Column(
      children: <Widget>[
        Container(
          height: 50,
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.blue,
            ),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.contacts, color: Colors.blue,),
              hintText: 'Ingrese codigo de invitacion',
              hintStyle: TextStyle(
                color: Colors.blue),
              )
            ),
          )
      ]
    );
  }

  Widget _crearTerminosyCondiciones(){

    return GestureDetector(
      onTap: (){},
          child: Container(
        width: 300,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child:
              Text(
// Link con los terminos y condiciones para clientes SmartPass
                'Terminos y Condiciones',
              style: TextStyle(fontSize: 16.0, color: Colors.blue),
              textAlign: TextAlign.justify,),
          ),
    );
  }

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
              child: Text('Valor de SmartPass',
                style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                ),
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.center,
            height: 70,
              child: 
               Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                child: Text('20 x mes',
                  style: Theme.of(context).textTheme.title, textScaleFactor: 1.4,textAlign: TextAlign.justify,
                  ),
              ),
              ),
          ],
        ),
      );
  }
}