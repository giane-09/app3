import 'package:app3/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMC App',
      theme: ThemeData(
        fontFamily: 'manrope',
        sliderTheme: SliderThemeData(
          activeTickMarkColor: Color(0XFFf72585).withOpacity(0.85),
          inactiveTrackColor: Color(0XFF1d3557).withOpacity(0.85),
          thumbColor: Color(0XFFf72585).withOpacity(0.85),
          overlayColor: Color(0XFFf72585).withOpacity(0.85),
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 14.0,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 26.0,
            ),
            trackHeight: 8.0,
        )
       ),
      home: HomePage()
    );
  }
}