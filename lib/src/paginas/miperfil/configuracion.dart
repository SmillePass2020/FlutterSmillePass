import 'package:flutter/material.dart';

class ConfiguracionPage extends StatefulWidget {
  @override
  _ConfiguracionPageState createState() => _ConfiguracionPageState();
}

class _ConfiguracionPageState extends State<ConfiguracionPage> {

  bool _bloaquearSwitch = false;
  bool _bloaquearFavoritos = false;
  bool _bloaquearEmail = false;
  bool _bloaquearCelular = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: RichText(
            text: TextSpan(
              style: Theme.of(context).
              textTheme.
              title, 
              children: [
                TextSpan(
                  text: 'Configuración', 
                  style: TextStyle(
                    color: Colors.blueGrey),
                ),
              ]
            ),
          ), 
          actions: <Widget>[
          IconButton(
              icon: Icon( Icons.arrow_back_ios, color: Colors.blueGrey), 
              onPressed: ()=> Navigator.pushReplacementNamed(context, 'perfil')
        ),
          ]
        ),
        body: Stack(
          children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              _tucuenta(),
              Divider( color: Colors.grey[100], height: 50.0, thickness: 5),
              _notificaciones(),
            ]
           )
         )
        ]
      )
    );
  }

  Widget _tucuenta(){

    return  Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Mi Cuenta',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
              GestureDetector(
                child: Text('Numero de Telefono',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ]
         )
       ]
      )
    );
  }

  Widget _notificaciones(){

    return  Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Notificaciones',
              style: Theme.of(context).textTheme.title,
              ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 30),
                SwitchListTile(
                  title: Text('Notificaciones de nuevas promociones',
                  style: TextStyle(fontSize: 14)
                  ),
                  value: _bloaquearSwitch,
                  onChanged: (valor){
                    setState(() {
                      _bloaquearSwitch = valor;
                    });
                  }
                ),
                Divider(),
                SwitchListTile(
                  title: Text('Notificaciones de favoritos',
                  style: TextStyle(fontSize: 14)
                  ),
                  value: _bloaquearFavoritos,
                  onChanged: (valor){
                    setState(() {
                      _bloaquearFavoritos = valor;
                    });
                  }
                ),
                Divider(),
                SwitchListTile(
                  title: Text('Enviar voucher al email',
                  style: TextStyle(fontSize: 14)
                  ),
                  value: _bloaquearEmail,
                  onChanged: (valor){
                    setState(() {
                      _bloaquearEmail = valor;
                    });
                  }
                ),
                Divider(),
                SwitchListTile(
                  title: Text('Enviar recordatorio al celular',
                  style: TextStyle(fontSize: 14)
                  ),
                  value: _bloaquearCelular,
                  onChanged: (valor){
                    setState(() {
                      _bloaquearCelular = valor;
                    });
                  }
                ),
            ]
          ),
        ],
      ),
    );
  }
}