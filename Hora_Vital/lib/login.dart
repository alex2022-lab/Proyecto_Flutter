import 'package:flutter/material.dart';
import 'package:hora_vital/registro.dart';

class Login extends StatelessWidget{
  final Registro registro = Registro();
  Login({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Inicio de sesión",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
            //email
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Correo',
                    labelStyle: TextStyle(
                      color: Color(0xFFBEBCBC),
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Colors.cyanAccent,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //password

            SizedBox(
              width: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color(0xFFBEBCBC),
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Colors.cyanAccent,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                  obscureText: true,
                  onChanged: (value) {},
                ),
              ),
            ),
            ElevatedButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> registro.cuerpo()))},
                child: const Text(
                    'Ingresar'
                ))
          ],),
      ),
    );
  }
}
