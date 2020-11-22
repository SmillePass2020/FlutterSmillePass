import 'package:flutter/material.dart';
import 'package:smilepass_usuarios/src/paginas/ayudaenlinea_page.dart';
import 'package:smilepass_usuarios/src/paginas/categorias/comida_page.dart';
import 'package:smilepass_usuarios/src/paginas/favoritos/selecciondelocal.dart';
import 'package:smilepass_usuarios/src/paginas/favoritos_page.dart';
import 'package:smilepass_usuarios/src/paginas/homa_page.dart';
import 'package:smilepass_usuarios/src/paginas/miperfil/configuracion.dart';
import 'package:smilepass_usuarios/src/paginas/miperfil/usuarioycontrase%C3%B1a.dart';
import 'package:smilepass_usuarios/src/paginas/miperfil_page.dart';
import 'package:smilepass_usuarios/src/paginas/miscupones_page.dart';
import 'package:smilepass_usuarios/src/paginas/notificaciones/homenotificaciones.dart';
import 'package:smilepass_usuarios/src/paginas/progreso/nivelesindividuales.dart';
import 'package:smilepass_usuarios/src/paginas/progreso_page.dart';
import 'package:smilepass_usuarios/src/paginas/seleccion/aceptacionproducto_page.dart';
import 'package:smilepass_usuarios/src/paginas/seleccion/seleccionproducto_page.dart';
import 'package:smilepass_usuarios/src/paginas/smartpass/cuentasmartpass.dart';
import 'package:smilepass_usuarios/src/paginas/sugeridos_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'SmilePass',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {

        'home'               : (BuildContext context) => HomePageUsuarios(), 
        'progreso'           : (BuildContext context) => ProgresoUsuarioPage(), 
        'sugeridos'          : (BuildContext context) => SugeridosUsuariosPage(),
        'favoritos'          : (BuildContext context) => FavoritosUsuariosPage(),
        'miscupones'         : (BuildContext context) => CuponesUsuariosPage(),
        'perfil'             : (BuildContext context) => PerfilUsuarioPage(),
        'ayuda'              : (BuildContext context) => AyudaUsuarioPage(), 
        'comida'             : (BuildContext context) => ComidaPage(), 
        'seleccion'          : (BuildContext context) => SeleccionProductoPage(),
        'voucherlisto'       : (BuildContext context) => AceptacionProductoPage(), 
        'progresoporrubro'   : (BuildContext context) => NivelesIndividuales(),
        'seleccionlocal'     : (BuildContext context) => SeleccionLocalesPage(),
        'notificaciones'     : (BuildContext context) => HomeNotificacionesPage(),
        'smartpass'          : (BuildContext context) => CuentaSmartPassPage(),
        'configuracion'      : (BuildContext context) => ConfiguracionPage(), 
        'usuarioycontraseña' : (BuildContext context) => UsuarioyContrasenaPage(),
        
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

