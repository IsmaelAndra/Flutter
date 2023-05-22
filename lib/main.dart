import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'login.dart';
import 'register.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bootstrap App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _alert() {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Aceptar',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        )),
                  ],
                  title: const Text(
                    'Alerta',
                    style: TextStyle(color: Colors.blue),
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  contentPadding: const EdgeInsets.all(20.0),
                  contentTextStyle:
                      const TextStyle(color: Colors.blue),
                  icon: Icon(
                    BootstrapIcons.info_circle_fill,
                    color: Colors.blue,
                  ),
                  content: const Text(
                    'Inicie sesión primero',
                    textAlign: TextAlign.center,
                  )));
    }

  void _openLogin(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return Login();
        });
  }

  void _openRegister(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return Register();
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AVIANCA',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AVIANCA'),
          actions: [
            IconButton(
                onPressed: () => _openRegister(context),
                icon: Icon(BootstrapIcons.person_fill_add)),
            IconButton(
                onPressed: () => _openLogin(context),
                icon: Icon(BootstrapIcons.person_fill))
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              BootstrapContainer(
                children: [
                  BootstrapCol(
                    child: const Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontFamily: 'cursive',
                      ),
                    ),
                  )
                ],
              ),
              Container(
                child: const Text(
                  'Viaja Con Nosotros',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 6.0,
                    color: Color.fromRGBO(0, 47, 255, 1),
                    fontFamily: 'cursive',
                  ),
                ),
              ),
              BootstrapContainer(
                children: [
                  BootstrapCol(
                    child: const Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontFamily: 'cursive',
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                child: Image.network(
                  'https://img.freepik.com/foto-gratis/concepto-viaje-plano-completo-puntos-referencia_23-2149153258.jpg',
                ),
              ),
              BootstrapContainer(
                children: [
                  BootstrapCol(
                    child: const Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontFamily: 'cursive',
                      ),
                    ),
                  )
                ],
              ),
              BootstrapContainer(
                children: [
                  BootstrapCol(
                    child: const Text(
                      'En Avianca, el ser humano es el centro de todo lo que hacemos. Estamos comprometidos en ser un agente de transformación para las sociedades en las que servimos. Nuestra estrategia de Ciudadanía Corporativa: Avianca Ciudadana, tiene como propósito contribuir a la construcción de mejores ciudadanos en América Latina.',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'cursive',
                      ),
                    ),
                  )
                ],
              ),
              BootstrapContainer(
                children: [
                  BootstrapCol(
                    child: const Text(
                      '',
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontFamily: 'cursive',
                      ),
                    ),
                  )
                ],
              ),
              BootstrapContainer(
                children: [
                      BootstrapCol(
                      sizes: 'col-md-4',
                      child: Column(
                        children: <Widget>[
                          TextButton(onPressed: () => _alert(), child:
                          Column(
                            children: <Widget>[
                              Icon(BootstrapIcons.airplane_engines_fill, size: 50.0, color: Colors.black,),
                              Text('Reserva Tus Vuelos Ahora',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 6.0,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'cursive',
                                ),
                                textAlign: TextAlign.center),])
                          ),
                        ],
                      )),
                      BootstrapCol(
                      sizes: 'col-md-4',
                      child: Column(
                        children: <Widget>[
                          TextButton(onPressed: () => _alert(), child:
                          Column(
                            children: <Widget>[
                              Icon(BootstrapIcons.ticket_detailed_fill, size: 50.0, color: Colors.black,),
                              Text('Compra Tus Tickets Ya!',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 6.0,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'cursive',
                                ),
                                textAlign: TextAlign.center),])
                          ),
                        ],
                      )),
                  BootstrapCol(
                      sizes: 'col-md-4',
                      child: Column(
                        children: <Widget>[
                          TextButton(onPressed: () => _alert(), child:
                          Column(
                            children: <Widget>[
                              Icon(BootstrapIcons.house_door_fill, size: 50.0, color: Colors.black,),
                              Text('Reserva Tu Hotel',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 6.0,
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                  fontFamily: 'cursive',
                                ),
                                textAlign: TextAlign.center),])
                          ),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
