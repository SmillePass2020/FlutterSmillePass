import 'package:flutter/material.dart';


class AceptacionProductoPage extends StatelessWidget {


  @override

   Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(        
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text('Voucher Unico Personal', style: TextStyle(color: Colors.blueGrey)),
          actions: <Widget>[
             IconButton(
              icon: Icon( Icons.share, color: Colors.blueGrey), 
              onPressed: (){},
             ),
          ]
        ),
        floatingActionButton: _botonNavegar(context),
        body: Stack(
          children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearprimerbarratitulo(context),
              SizedBox(height:20.0), 
              _crearadvertenciapersonal(context),
              SizedBox(height:20.0),  
              _crearcodigoQRyalfa(context),
              SizedBox(height:20.0),
              //_crearfechalimite(),
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
      label: Text('Listo'),

//Boton que lleve a la pagina principal O si estas en la pagina "mis cupones" que te regrese a la misma pagina 
      onPressed: ()=> Navigator.pushReplacementNamed(context, 'home'),
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

  Widget _crearadvertenciapersonal(BuildContext context){

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
              child: Text('Importante',
                style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
                  width: 300,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                    child:
                        Text(
//Texto fijo                        
                  'El voucher generado es de uso unico y personal. \nSi desea compartirlo y obetener mas beneficios, podra hacerlo con el icono superior.',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.justify,),
            ),
          ),
        ]
      )
    );
  }

  Widget _crearcodigoQRyalfa(BuildContext context){

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
            height: 40,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//Codigo alfanumerico (_id)              
              child: Text('AJ874JHSN789',
                style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                ),
            ),
          ),
          Divider(),
          Container(
            alignment: Alignment.center,
            height: 260,
//Codigo QR            
            child: Image(image: NetworkImage('http://product.corel.com/help/Common/CDGS/540223850/Shared/CorelDRAW-QR-code.png'))
          ),
          Container(
            alignment: Alignment.center,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
//Fecha de validez del voucher              
              child: Text('Valido hasta: 31/06/2020',
                style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
                ),
            ),
          ),
        ]
      )
    );
  }
}