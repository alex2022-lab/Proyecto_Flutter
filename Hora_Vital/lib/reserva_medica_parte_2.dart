import 'package:flutter/material.dart';

class ReservaMedicaParte2 {
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
              "Reserva Médica",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),

            //causa
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Causa',
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

            //medico o especialista
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Médico o Especialista',
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

            //ubicacion consulta
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Ubicación consulta',
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
            ElevatedButton(onPressed: () => {},
                child: const Text(
                    'Guardar'
                ))
          ],),
      ),
    );
  }
}