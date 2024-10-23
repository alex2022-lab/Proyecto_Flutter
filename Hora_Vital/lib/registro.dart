import 'package:flutter/material.dart';

class Registro {
  Widget cuerpo(){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hora Vital", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Nueva Cuenta",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),

            //nombre
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre',
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

            //direccion
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Dirección',
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
            ElevatedButton(onPressed: () => {},
                child: const Text(
                    'Crear'
                ))
          ],),
      ),
    );
  }
}