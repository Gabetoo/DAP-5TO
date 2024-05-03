import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:log_in/elementos/miboton.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  void loginearUsuario() {}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(150, 150, 150, 1),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50), //Sirve para dejar espacios
              Icon(
                Icons.phone_iphone,
                size: 125,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              SizedBox(height: 50),

              Text(
                //Texto de bienvenida
                '¡Bienvenido de vuelta!',
                style: TextStyle(
                  color: Color.fromRGBO(250, 250, 250, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Padding(
                //Bloque de texto de contraseña
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1), width: 2.5),
                    ),
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    hintText: 'Usuario',
                  ),
                ),
              ),

              SizedBox(height: 5),

              Padding(
                //Bloque de texto de contraseña
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromRGBO(255, 255, 255, 1)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 1), width: 2.5),
                    ),
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    filled: true,
                    hintText: 'Contraseña',
                  ),
                ),
              ),

              SizedBox(height: 2),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(color: Color.fromRGBO(206, 206, 206, 1)),
                  )
                ]),
              ),

              SizedBox(height: 10),

              MiBoton(onTap: null)
            ],
          ),
        ),
      ),
    );
  }
}
