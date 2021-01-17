import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:singelton/bloc/usuario/usuario_cubit.dart';
import 'package:singelton/models/usuario.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<UsuarioCubit>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Pagina 2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                color: Colors.blue,
                child: Text('Establecer Usuario',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  final newUsuario = Usuario(
                      nombre: 'Christian Arango',
                      edad: 29,
                      profesiones: ['Musìco', 'Pianista']);

                  bloc.seleccionarUsuario(newUsuario);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child:
                    Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
                onPressed: () {
                  bloc.cambiarEdad(30);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: Text('Añadir Profesion',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  bloc.agregarProfesion('Nada');
                },
              )
            ],
          ),
        ));
  }
}
