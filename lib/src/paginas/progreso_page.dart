import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:smilepass_usuarios/src/widget/menulateral_page.dart';

class ProgresoUsuarioPage extends StatefulWidget {
  ProgresoUsuarioPage({Key key}) : super(key: key);

  @override
  _ProgresoUsuarioPageState createState() => _ProgresoUsuarioPageState();
}

class _ProgresoUsuarioPageState extends State<ProgresoUsuarioPage> {
  PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 1, viewportFraction: 0.78);
  }

  @override
  Widget build(BuildContext context) {
//Son 6 niveles: Nivel 1: 5 compras / Nivel 2: 10 compras / Nivel 3: 20 compras / Nivel 4: 50 compras / Nivel 5: 100 compras / Nivel 6: Nivel Premium... Cunado se finaliza el nivel el contador vuele a 0
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(36, 164, 242, 1),
          elevation: 0,
          title: RichText(
            text: TextSpan(style: Theme.of(context).textTheme.title, children: [
              TextSpan(
                text: 'Progreso',
                style: TextStyle(color: Colors.white),
              ),
            ]),
          ),
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
                      stops: [
                    0.15,
                    0.35,
                    0.7,
                    1
                  ])),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
//Indicador que muestra el nivel promedio, brindando beneficios por nivel
                  _circulogeneraprogreso(),
                  SizedBox(height: 30.0),
//Tarjetas que indican los premios para cada nivel obtenido
                  _beneficioPorCategoria(),
                  SizedBox(height: 20.0),
                  _mejorarprogreso(),
                  SizedBox(height: 20.0),
                  _terminosycondiciones(),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ],
        ));
  }

  Widget _circulogeneraprogreso() {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: GestureDetector(
          onTap: () =>
              Navigator.pushReplacementNamed(context, 'progresoporrubro'),
          child: Column(children: <Widget>[
            CircularPercentIndicator(
//Color de la app
              backgroundColor: Colors.white,
//Color segun el nivel actual (no se si se puede, je)
              progressColor: Colors.green,
              percent: 0.25,
              animation: true,
              radius: 150.0,
              lineWidth: 10.0,
//Se promedia los numeros de las diferentes categorias
              center: Text(
                '5\n/20',
                style: TextStyle(fontSize: 40.0, color: Colors.white),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: <Widget>[
                  Text(
                    'Nivel 3',
                    style: Theme.of(context).textTheme.title,
                    textScaleFactor: 1.5,
                  ),
                ],
              ),
            )
          ]),
        ));
  }

  Widget _beneficioPorCategoria() {
    return Stack(children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
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
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
//Texto fijo
                child: Text('Beneficios segun tu nivel',
                    style: Theme.of(context).textTheme.title,
                    textScaleFactor: 0.8),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
            ),
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          child: Container(
            width: double.infinity,
            height: 230,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                _nivel1(),
                _nivel2(),
                _nivel3(),
                _nivel4(),
                _nivel5(),
                _premium(),
              ],
            ),
          ))
    ]);
  }

//Nivel 1 con los beneficios por alcanzar el objetivo (a modificar)
  Widget _nivel1() {
    return Container(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 45,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.yellow[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Nivel 1', style: Theme.of(context).textTheme.title),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 180.0,
        width: 250.0,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Beneficios nivel 1
          child: Text(
              ' - Voucher de 100 para usar en la proxima compra en productos seleccionados \n - Acceso a beneficios exclusivos \n - Descuentos permantenes en tiendas exclusivas',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.start),
        ),
      ),
    ]));
  }

//Nivel 2 con los beneficios por alcanzar el objetivo (a modificar)
  Widget _nivel2() {
    return Container(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 45,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.green[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Nivel 2', style: Theme.of(context).textTheme.title),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 180.0,
        width: 250.0,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Beneficios nivel 2
          child: Text(
              ' - Voucher de 100 para usar en la proxima compra en productos seleccionados \n - Acceso a beneficios exclusivos \n - Descuentos permantenes en tiendas exclusivas',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.start),
        ),
      ),
    ]));
  }

//Nivel 3 con los beneficios por alcanzar el objetivo (a modificar)
  Widget _nivel3() {
    return Container(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 45,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Nivel 3', style: Theme.of(context).textTheme.title),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 180.0,
        width: 250.0,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Beneficios nivel 3
          child: Text(
              ' - Voucher de 100 para usar en la proxima compra en productos seleccionados \n - Acceso a beneficios exclusivos \n - Descuentos permantenes en tiendas exclusivas',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.start),
        ),
      ),
    ]));
  }

//Nivel 4 con los beneficios por alcanzar el objetivo (a modificar)
  Widget _nivel4() {
    return Container(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 45,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Nivel 4', style: Theme.of(context).textTheme.title),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 180.0,
        width: 250.0,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Beneficios nivel 4
          child: Text(
              ' - Voucher de 100 para usar en la proxima compra en productos seleccionados \n - Acceso a beneficios exclusivos \n - Descuentos permantenes en tiendas exclusivas',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.start),
        ),
      ),
    ]));
  }

//Nivel 5 con los beneficios por alcanzar el objetivo (a modificar)
  Widget _nivel5() {
    return Container(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 45,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Nivel 5', style: Theme.of(context).textTheme.title),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 180.0,
        width: 250.0,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Beneficios nivel 5
          child: Text(
              ' - Voucher de 100 para usar en la proxima compra en productos seleccionados \n - Acceso a beneficios exclusivos \n - Descuentos permantenes en tiendas exclusivas',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.start),
        ),
      ),
    ]));
  }

//Premium con los beneficios por alcanzar el objetivo (a modificar)
  Widget _premium() {
    return Container(
        child: Column(children: <Widget>[
      Container(
        alignment: Alignment.center,
        height: 45,
        width: 250,
        decoration: BoxDecoration(
            color: Color.fromRGBO(114, 6, 255, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Premium',
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 180.0,
        width: 250.0,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Beneficios nivel premium
          child: Text(
              ' - Voucher de 100 para usar en la proxima compra en productos seleccionados \n - Acceso a beneficios exclusivos \n - Descuentos permantenes en tiendas exclusivas',
              style: TextStyle(fontSize: 15.0),
              textAlign: TextAlign.start),
        ),
      ),
    ]));
  }

  Widget _mejorarprogreso() {
    return Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
//Texto fijo
              child: Text('Consejos para progresar rapido',
                  style: Theme.of(context).textTheme.title,
                  textScaleFactor: 0.8),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 5, 25, 5),
//Texto fijo
              child: Text(
                  ' • Los voucher que compartes suman 2 puntos \n • Invitar amigos suma 5 puntos \n • Las compras en tus locales favoritos suman 2 puntos',
                  style: TextStyle(fontSize: 22.0),
                  textAlign: TextAlign.start),
            ),
          ),
        ]));
  }

  Widget _terminosycondiciones() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        alignment: Alignment.center,
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
            color: Colors.blueGrey[100],
            width: 0.9,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
//Texto fijo
          child: Text('Terminos y Condiciones',
              style: Theme.of(context).textTheme.title, textScaleFactor: 0.8),
        ),
      ),
    );
  }
}
