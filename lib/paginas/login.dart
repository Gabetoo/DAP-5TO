import 'package:flutter/material.dart';
import 'package:log_in/elementos/mi_textfield.dart';

class Login extends StatelessWidget {
  Login({super.key});
  // guardo las credenciales
  final usuarioController = TextEditingController();
  final contrasenaController = TextEditingController();


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

            Text( //Texto de bienvenida
              '¡Bienvenido de vuelta!',
              style: TextStyle(
                color: Color.fromRGBO(250, 250, 250, 1),
                fontSize: 20,
              ),
            ),

            SizedBox(height: 20),

            MiTextField(
              controller: usuarioController,
              hintText: 'Usuario',
              obscureText: false,
              ),

            SizedBox(height: 10),

            MiTextField(
              controller: contrasenaController,
              hintText: 'Contraseña',
              obscureText: true,
              ),

          ],
          ),
        ),
      ),
    );
  }
}
