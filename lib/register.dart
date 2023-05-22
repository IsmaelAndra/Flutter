import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';

void main() => runApp(const Register());

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    bool is_checked = false;
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
                    'Registrado',
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
                    'Ha sido registrado con exito',
                    textAlign: TextAlign.center,
                  )));
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar:
                AppBar(title: const Text('Formulario de Registro'), actions: [
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
                      'Datos Informativos',
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
                    sizes: 'col-md-6',
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: 'Nombre'),
                        )
                      ],
                    )),
                BootstrapCol(
                    sizes: 'col-md-6',
                    child: Column(
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: 'Apellido'),
                        )
                      ],
                    )),
                BootstrapContainer(children: [
                  BootstrapCol(
                      sizes: 'col-md-9',
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                labelText: 'Correo Electronico'),
                          )
                        ],
                      )),
                  BootstrapCol(
                      sizes: 'col-md-3',
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(labelText: 'Edad'),
                          )
                        ],
                      ))
                ]),
                BootstrapContainer(
                  children: [
                    BootstrapCol(
                      child: const Text(
                        'Genero',
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
                    sizes: 'col-lg-5',
                    child: Column(
                      children: <Widget>[
                        RadioListTile(
                            value: is_checked,
                            groupValue: null,
                            onChanged: (val) {
                              is_checked = val!;
                            },
                            dense: true,
                            title: Text('Mujer'))
                      ],
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-lg-5',
                    child: Column(
                      children: <Widget>[
                        RadioListTile(
                            value: is_checked,
                            dense: true,
                            groupValue: null,
                            onChanged: (val) {
                              is_checked = val!;
                            },
                            title: Text('Hombre'))
                      ],
                    ),
                  )
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
                BootstrapContainer(
                  children: [
                    BootstrapCol(
                      child: const Text(
                        'Estado Civil',
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
                    sizes: 'col-lg-5',
                    child: Column(
                      children: <Widget>[
                        CheckboxListTile(
                            title: Text('Soltero'),
                            value: is_checked,
                            onChanged: (val) {
                              is_checked = val!;
                            })
                      ],
                    ),
                  ),
                  BootstrapCol(
                    sizes: 'col-lg-5',
                    child: Column(
                      children: <Widget>[
                        CheckboxListTile(
                            title: Text('Casado'),
                            value: is_checked,
                            onChanged: (val) {
                              is_checked = val!;
                            })
                      ],
                    ),
                  )
                ]),
                BootstrapContainer(
                  children: [
                    BootstrapCol(
                      child: const Text(
                        '',
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
