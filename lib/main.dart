import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carls Jr'),
          centerTitle: true,
          backgroundColor: const Color(0xff000000),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Text("Ingresa tus datos:"),
                TextField(
                  decoration: InputDecoration(
                      hintText: "ID",
                      labelText: "Escribe tu id",
                      icon: Icon(Icons.ad_units_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Nombre",
                      labelText: "Escribe tu nombre",
                      icon: Icon(Icons.account_circle_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Apellido",
                      labelText: "Escribe tu apellido",
                      icon: Icon(Icons.account_circle_rounded)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Telefono",
                      labelText: "Escribe tu numero de telefono",
                      icon: Icon(Icons.call)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Direccion",
                      labelText: "Escribe tu direccion",
                      icon: Icon(Icons.location_on)),
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: "Sucursal",
                      labelText: "Escribe tu sucursal",
                      icon: Icon(Icons.location_city)),
                ),
                TextField(
                    decoration: InputDecoration(
                        hintText: "Contraseña",
                        labelText: "Escribe tu contraseña",
                        icon: Icon(Icons.lock)),
                    obscureText: true),
              ],
            )));
  }
}
