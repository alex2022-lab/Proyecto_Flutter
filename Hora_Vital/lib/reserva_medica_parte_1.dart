import 'package:flutter/material.dart';
import 'package:hora_vital/reserva_medica_parte_2.dart';

class ReservaMedicaParte1 {
  ReservaMedicaParte2 reservaMedicaParte2 = ReservaMedicaParte2();
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
              "Reserva Médica",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),

            //nombre del paciente
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Nombre del Paciente',
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

            //rut
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Rut',
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

            //telefono
            const SizedBox(
              width: 300,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0), // Añadir margen
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Teléfono',
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
            ElevatedButton(onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=> reservaMedicaParte2.cuerpo()))},
                child: const Text(
                    'Siguiente'
                ))
          ],),
      ),
    );
  }
}