import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF1d3557),
        title: Text("IMC App"),
      ),
      body: Column(
        children: [
          Text("Bienvenido, selecciona tu peso y talla"),

        ],
      ),
    );
  }
}