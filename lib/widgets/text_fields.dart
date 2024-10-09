import 'package:flutter/material.dart';

Widget textFieldEmail() {
  return TextFieldGeneral(
      labelText: "Correo Electrónico",
      hintText: "ejemplo@correo.com",
      icon: Icons.mail_outline_rounded);
}

Widget textFieldName() {
  return TextFieldGeneral(
      labelText: "Nombre de Usuario",
      hintText: "Ejemplo123",
      keyboardType: TextInputType.emailAddress,
      icon: Icons.person_outline);
}

Widget textFieldPassword() {
  return TextFieldGeneral(
      labelText: "Contraseña",
      icon: Icons.lock_outline_rounded,
      obscureText: true);
}

class TextFieldGeneral extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final IconData icon;
  final bool obscureText;

  const TextFieldGeneral({
    super.key,
    required this.labelText,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.icon = Icons.text_fields,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
