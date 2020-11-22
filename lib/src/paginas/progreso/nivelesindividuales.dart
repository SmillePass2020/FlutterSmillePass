import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class NivelesIndividuales extends StatefulWidget {

  
  @override
  _NivelesIndividualesState createState() => _NivelesIndividualesState();
}

class _NivelesIndividualesState extends State<NivelesIndividuales> {
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
                  text: 'Progreso', 
                  style: TextStyle(
                    color: Colors.white),
                ),
              ]
            ),
          ), 
          actions: <Widget>[
          IconButton(
              icon: Icon( Icons.arrow_back_ios, color: Colors.white), 
              onPressed: ()=> Navigator.pushReplacementNamed(context, 'progreso'),
        ),
          ]
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
                  stops: [0.1,0.3,0.4,0.43]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _circulosprogreso1(context),
              SizedBox(height: 30.0),
              _comentario(context),
              SizedBox(height: 20.0),
//Los mismos que se encuetran en el inicio                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
              _sugeridosgeneral(context),
            ]
           )
          )
        ]
      )
    );
  }

  Widget _circulosprogreso1(BuildContext context){

    return Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
             child: Column(
               children: <Widget>[
                 Text(
                'Nivel por categoria',
                style: Theme.of(context).textTheme.title,
                ),
                 SizedBox(height: 20.0),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
// Categoria Comida
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                          backgroundColor: Colors.white,  
                          progressColor: Color.fromRGBO(204, 153, 255, 1),
                          percent: 0.25,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('5\n/20',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 3', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Comida', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
//Categoria Tecno                  
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(64, 64, 64, 1),
                          percent: 0.8,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('4\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 1', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Tecno', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
//Categoria Salud                  
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(102, 178, 255, 1),
                          percent: 0.2,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('1\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 2', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Salud', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
//Categoria Eventos                  
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO( 255 , 162, 0, 1),
                          percent: 0.3,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('4\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 2', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Eventos', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
                   ]
                 ),
                 SizedBox(height: 20),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: <Widget>[
//Categoria Viajes                     
                    GestureDetector(
                      onTap: ()=> Navigator.pushReplacementNamed(context, 'Viajes' ),
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(255, 224, 17, 1),
                          percent: 0.3,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('4\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 2', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Viajes', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
//Categoria Ropa                  
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(255, 102, 102, 1),
                          percent: 0.3,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('4\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 2', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Ropa', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
//Categoria Hogar                  
                    GestureDetector(
                      onTap: ()=> Navigator.pushReplacementNamed(context, 'Hogar' ),
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(102, 204, 0, 1),
                          percent: 0.3,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('4\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 2', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Hogar', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
//Categoria Otros                  
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children:<Widget>[
                         CircularPercentIndicator(
                           backgroundColor: Colors.white,
                          progressColor: Color.fromRGBO(255, 153, 204, 1),
                          percent: 0.3,
                          animation: true, 
                          radius: 55.0,
                          lineWidth: 5.0,
                          center: Text('4\n/5',style: TextStyle(fontSize: 15.0, color: Colors.white),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: <Widget>[
                              Text('Nivel 2', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.6,
                              ),  
                              Text('Otros', 
                              style: Theme.of(context).textTheme.title, textScaleFactor: 0.7,
                              ),
                            ],
                          ),
                        )
                      ]
                    ),
                  ),
                ]
              ),
            ]
          )
    );
  }

  Widget _comentario(BuildContext context){

    return Container(
         margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        alignment: Alignment.center,
        height: 50,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          color: Colors.blueGrey[100],
          width:0.9,
        ),
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
//Texto fijo                 
          child: Text('Segui los consejos y avanza mas rapido ',
            style: Theme.of(context).textTheme.title, textScaleFactor: 0.8
            ),
        ),
      );
  }

  Widget _sugeridosgeneral(BuildContext context){

    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: <Widget>[
            Container(
              child:Column(
              children: <Widget>[
                Text(
                'Sugeridos para vos',
                style: Theme.of(context).textTheme.title,
                ),
              ],
             ),
            ),
        SizedBox(height: 10.0),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
//Vouchers de la seccion de sugeridos                
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