import 'package:flutter/material.dart';
import 'package:hora_vital/reserva_medica_parte_1.dart';

class Registro {
  ReservaMedicaParte1 reservaMedicaParte1 = ReservaMedicaParte1();
  Widget cuerpo(BuildContext context){
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
                      color: Color(0xAA5E5E5E),
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
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
                      color: Color(0xAA5E5E5E),
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
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
                      color: Color(0xAA5E5E5E),
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
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
                      color: Color(0xAA5E5E5E),
                      fontWeight: FontWeight.w700,
                    ),
                    filled: true,
                    fillColor: Color(0xFFD9D9D9),
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
            ElevatedButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> reservaMedicaParte1.cuerpo(context)))},
                child: const Text(
                    'Crear'
                ))
          ],),
      ),
    );
  }
}