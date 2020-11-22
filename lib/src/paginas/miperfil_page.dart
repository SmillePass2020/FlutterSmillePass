import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class PerfilUsuarioPage extends StatefulWidget {
  @override
  _PerfilUsuarioPageState createState() => _PerfilUsuarioPageState();
}

class _PerfilUsuarioPageState extends State<PerfilUsuarioPage> {

  PageController _controller;

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
                  text: 'Configuracion', 
                  style: TextStyle(
                    color: Colors.white),
                ),
              ]
            ),
          ), 
        ),
        drawer: MenuLateralUsuarios(),
        body:Stack(
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
                  stops: [0.08,0.16,0.24,0.35]
                )
              ),
            ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
            _crearFondo(context),
            Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
            _misdatos(),
            Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
            _suscripciones(),
            Divider( color: Colors.grey[100], height: 50.0, thickness: 10),
            _ajustes(),
            SizedBox(height: 40)
           ]
         )
        )
       ]
      )
    );
  }

  Widget _crearFondo(BuildContext context){

          return Container(
            padding: EdgeInsets.only(top: 10.0),
            child: Column(
              children: <Widget>[
                //Iamgen de perfil de Gmail o la puede cambiar en "mi perfil"
                CircleAvatar(
                  backgroundImage: NetworkImage('https://los40.cl/wp-content/uploads/2020/03/will-smith-768x432.jpg'),
                  radius: 50.0,
                ),
                SizedBox( height: 20.0, width: double.infinity),
                // Nombre y apellido que registro 
                Text('Juan Moyano', style: Theme.of(context).textTheme.title, textScaleFactor: 1),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text('jcruzmvaldez@gmial.com', style: TextStyle( color: Colors.white, fontSize: 15.0)),
                ),
              ],
            ),
    );

  }

  Widget _misdatos(){

    return  Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Mis Datos',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Nombre con el cual se registro                  
                  labelText: 'Nombre',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
              Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Apellido con el cual se registro                  
                  labelText: 'Apellido',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
              Container(
            alignment: Alignment.centerLeft,
            height: 60.0,
            child: TextFormField(
              keyboardType: TextInputType.text,
                style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                ),
                decoration: InputDecoration(
//Se modifica segun si el usuario es Convencional o Premium (SmartPass)                  
                  labelText: 'Tipo de Servicio',
                  hintStyle: TextStyle(
                color: Colors.black,
              ),
                ),
               ),
              ),
            ]
          )
        ]
      ),
    );
  }

  Widget _suscripciones(){

    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Suscripciones',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
        children: <Widget>[
          Divider(height: 10.0,color: Colors.black,),
          Container(
        width: double.infinity,
        height: 140,
                child: PageView(
                  controller: _controller,
                  children: <Widget>[
//SmartPass                    
                _smartpass(),
//Invitaciones de empresas a seguirlos como favoritos                
                _smartpass(),
                  ]
                )
             )
            ]
          )
        ]
      )
    );
  }

  Widget _smartpass(){

    return GestureDetector(
      onTap: ()=> Navigator.pushReplacementNamed(context, 'smartpass'),
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('https://previews.123rf.com/images/jovanmandic/jovanmandic1804/jovanmandic180400399/100064432-happy-friends-shopping-young-friends-enjoying-shopping-in-the-city-holding-shopping-bags-and-coffee-.jpg')
          ),
          border: Border.all(
            color: Colors.blueGrey[100],
            width:0.9,
          ),
        ),
          child: Row(
            children: <Widget>[
// Voucher de suscripcion para usuarios              
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 80, 0, 0),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child:
                    Text('Disfruta mas con SmartPass', 
                      style: Theme.of(context).textTheme.title,
                    ),
                ),
              )
            ],
          )
        ),
    );
  }

  Widget _ajustes(){

    return  Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Mis Datos',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
              GestureDetector(
                onTap: ()=> Navigator.pushReplacementNamed(context, 'configuracion'),
                child: Text('Configuración',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            GestureDetector( 
                onTap: ()=> Navigator.pushReplacementNamed(context, 'usuarioycontraseña'),
                child: Text('Cambiar email y/o contraseña',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            GestureDetector(
                child: Text('Cerrar sesion',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red),
              ),
            ),
          ]
         )
       ]
      )
    );

  }
}