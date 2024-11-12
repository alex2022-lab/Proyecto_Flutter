import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<List<dynamic>> fetchLocalData() async {
  final String response = await rootBundle.loadString('assets/doctores.json');
  final data = json.decode(response);
  return data['doctores'] as List<dynamic>;
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<List<dynamic>> futureData;
  @override
  void initState() {
    super.initState();
    futureData = fetchLocalData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Especialistas'),
      ),
      body: Center(
        child: FutureBuilder<List<dynamic>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Text('No se encontraron datos');
            } else {
              return Column(
                children: snapshot.data!.map((data) {
                  return Column(
                    children: [
                      ListTile( title: Text(data['nombre']),
                        subtitle: Text(data['especialidad']),
                      ),
                      const Divider(),
                    ],
                  );
                }).toList(),
              );
            }
          },
        ),
      ),
    );
  }
}
