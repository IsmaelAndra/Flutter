import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Exito',
                    style: TextStyle(color: Color.fromARGB(255, 0, 255, 21)),
                  ),
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  contentPadding: const EdgeInsets.all(20.0),
                  contentTextStyle:
                      const TextStyle(color: Color.fromARGB(255, 0, 255, 21)),
                  icon: Icon(
                    BootstrapIcons.check_circle_fill,
                    color: Color.fromARGB(255, 0, 255, 21),
                  ),
                  content: const Text(
                    'Ha iniciado sesión con exito',
                    textAlign: TextAlign.center,
                  )));
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(title: const Text('Formulario de Login'), actions: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    BootstrapIcons.x_circle_fill,
                    color: Colors.white,
                  )),
            ]),
            body: Center(
                child: Column(children: <Widget>[
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
              BootstrapContainer(children: [
                BootstrapCol(
                    child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Usuario'),
                    )
                  ],
                )),
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
                BootstrapContainer(children: [
                  BootstrapCol(
                      child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(labelText: 'Contraseña'),
                      )
                    ],
                  ))
                ]),
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
                BootstrapContainer(children: [
                  BootstrapCol(
                    sizes: 'col-lg-6',
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () => _alert(), child: Text('Guardar'))
                      ],
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-lg-6',
                    child: Column(
                      children: <Widget>[
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Cancelar'))
                      ],
                    ),
                  )
                ])
              ])
            ]))));
  }
}
