import 'package:flutter/material.dart';

import 'package:componente_vsc_01/helpers/dialogs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text("titulo de flutter prueba"),
        ),
        body: Builder(
          builder: (BuildContext context) => SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.indigo),
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 50.0, offset: Offset(30, 30))
                  ]),
              child: Column(children: <Widget>[
                const Text(
                  "Hola mundo Flutter",
                  style: TextStyle(
                      color: Color.fromARGB(255, 70, 50, 158),
                      fontSize: 30.0,
                      backgroundColor: Colors.white,
                      fontWeight: FontWeight.w800),
                  textDirection: TextDirection.ltr,
                ),
                Image.network(
                    'https://images.freeimages.com/images/large-previews/13e/my-cat-1363423.jpg',
                    height: 150),
                Padding(
                  padding: const EdgeInsets.all(80.0),
                  child: Image.asset(
                    "assets/images/doggo.png",
                    height: 150,
                  ),
                ),
                const Text(
                  "esta es la 2da parte",
                  style: TextStyle(
                      color: Color.fromARGB(255, 70, 50, 158),
                      fontSize: 44.0,
                      backgroundColor: Colors.white,
                      fontWeight: FontWeight.w800),
                  textDirection: TextDirection.ltr,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 300),
                  child: ElevatedButton(
                      onPressed: () => contacto(context),
                      child: const Text("Contacto")),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }

  void contacto(BuildContext context) {
    infoDialog(
        context: context,
        title: "contacto",
        content: "contactame a este numero");
  }
}
