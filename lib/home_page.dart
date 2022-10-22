import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 70.0;
  double altura = 165;
  double inc =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF001d3d),
        title: Text("IMC App"),
        title: Text(
          "IMC App",
          style: TextStyle(
            fontFamily: 'Manrope',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Text("Bienvenido, selecciona tu peso y talla:"),
        ],
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bienvenido, selecciona tu peso y talla:",
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF001d3d).withOpacity(0.80),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  peso.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 38.0,
                    color: Color(0xFF001d3d).withOpacity(0.80),
                  ),
                ),
                Text(
                  "Kg",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    color: Color(0xFF001d3d).withOpacity(0.80),
                  ),
                ),
              ],
            ),
            Slider(
              value: peso,
              min: 20,
              max: 200,
              onChanged: (double value) {
                peso = value;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  altura.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 38.0,
                    color: Color(0xFF001d3d).withOpacity(0.80),
                  ),
                ),
                Text(
                  "cm",
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 16.0,
                    color: Color(0xFF001d3d).withOpacity(0.80),
                  ),
                ),
              ],
            ),
            Slider(
              value: altura,
              min: 100,
              max: 220,
              onChanged: (double value) {
                altura = value;
                setState(() {});
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF001d3d),
                ),
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
                label: Text(
                  "Calcular",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Resultado:",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Color(0xFF001d3d).withOpacity(0.80),
              ),
            ),
            Center(
              child: Image.asset(
                'assets/img1.png',
                height: 180,
                width: 180,
                fit: BoxFit.contain,
                ),
            )
          ],
        ),
      ),
    );
    
  }

