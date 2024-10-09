import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:login_design/widgets/text_fields.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Regístrate",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('¿Ya tienes cuenta? Inicia Sesión'),
            ),
            SizedBox(height: 20),
            textFieldName(),
            SizedBox(height: 10),
            textFieldEmail(),
            SizedBox(height: 10),
            textFieldPassword(),
            SizedBox(height: 10),
            textFieldPassword(),
            SizedBox(height: 20),
            Text('O usa una de estas opciones'),
            SizedBox(height: 10),
            //Botones de redes sociales
            SignInButton(Buttons.Facebook, onPressed: () {}),
            SignInButton(Buttons.Xbox, onPressed: () {}),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
