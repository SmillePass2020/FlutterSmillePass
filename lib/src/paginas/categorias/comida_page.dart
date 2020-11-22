import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class ComidaPage extends StatefulWidget {
  @override
  _ComidaPageState createState() => _ComidaPageState();
}

class _ComidaPageState extends State<ComidaPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            appBar: AppBar(
//Color de la categoria              
              backgroundColor: Color.fromRGBO(204, 153, 255, 1),
              title: Text('SmilePass - Comida'),
          actions: <Widget>[
           IconButton(
            icon: Icon( Icons.arrow_back_ios),  
            onPressed: ()=> Navigator.pushReplacementNamed(context, 'home' ),
           ),
          ],
        ),
        drawer: MenuLateralUsuarios(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                  SizedBox(height: 10.0),
                  _textotop10(),
                  SizedBox(height: 10.0),
                  _crearTop10(),
                  Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
                  _crearTendencias(),
                  Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
                  _sugeridos(context),
                  ],
                ),
              ),
            ),
        );
      
  }

 Widget _textotop10(){

    return Container(
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
          
             )
            ]
      )
    );
              

 }

//Mostrar el top 10 del mes y solo para aquellos que tengan voucher de 1 mes o mas de validez, actualizado cada 5 o 10min
  Widget _crearTop10(){

    
           return Container(
             margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
             child: Column(
               children: <Widget>[
                 SizedBox(
                   height: 200.0,
                   child: ListView(
                   scrollDirection: Axis.vertical,
                  children: <Widget>[
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    SizedBox(height: 5.0),
                    _tarjetas3(),
                    
                  ],
          ),
                 )
               ],
             ),
           );
    
  }
   
//Mostrar las 10 mas consumidas del rubro con actualizacion de 5 o 10 min
  Widget _crearTendencias(){

    return Container(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
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

  Widget _tarjetas2(BuildContext context){

    return GestureDetector(
      onTap: (){},
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
              borderRadius: BorderRadius.circular(24),
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

  Widget _tarjetas3(){

    return Container(
      decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.blueGrey[100],
                  width:0.9,
                ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width:80,
                height: 50,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(10.0),
                  child: Image(
                  fit: BoxFit.fill,
                  alignment: Alignment.centerRight,
                  image: NetworkImage('https://infonegocios.biz/uploads/Mc-InfoNegocios-1.jpg')
                  ),
                  ),
                ),
              Container(
                  child:Column(
                    children: <Widget>[
                  Text('25% Cuarto de Libra', style: Theme.of(context).textTheme.title, textScaleFactor: 0.8),
                  Text('McDonalds - General Paz 153', style: TextStyle(fontSize: 10.0)),
                    ],
                  ),
              ),
              Container(
                height: 50,
                width: 90,
                child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  fit: BoxFit.fill,
                  alignment: Alignment.centerRight,
                  image: NetworkImage('https://resizer.iproimg.com/unsafe/880x/https://assets.iproup.com/assets/jpg/2019/09/6063.jpg?5.6.1.6')
                ),
                ),
              ),
            ],
          ),
        );
  }

//Seccion que se cobrara para acercar los voucher al consumidor
  Widget _sugeridos(BuildContext context){

        return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
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
}
