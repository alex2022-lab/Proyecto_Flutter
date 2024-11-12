import 'package:flutter/material.dart';
import 'package:hora_vital/home.dart';
import 'package:hora_vital/registro.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  final Registro registro = Registro();
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.supervised_user_circle, size: 90),
            const Text(
              "Inicio de sesión",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Form(
              key: formKey,
              child: Column(children: <Widget>[
                //email
                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0), // Añadir margen
                    child: TextFormField(
                      controller: email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email vacío';
                        }
                        if (!RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                          return 'Email inválido';
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
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
                //password

                SizedBox(
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 4.0), // Añadir margen
                    child: TextFormField(
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Campo vacío';
                          }
                        }),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => {
                          if (formKey.currentState!.validate())
                            {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyHomePage()))
                            }
                        },
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                    child: const Text(
                        style: TextStyle(color: Colors.white), 'Ingresar'))
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
