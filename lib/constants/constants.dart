import 'package:flutter/material.dart';

const Color backgroundColorLight = Color(0xFFEFEFEF);
const Color pureWhite = Color(0xFFFFFFFF);
const Color containerGreen = Color(0xFF379777);
const LinearGradient containerGradient = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF1A5D50), 
    Color(0xFF379777), 
    Color(0xFF123524), 
    Color(0xFF3B7B66), 
  ],
  stops: [0.0, 0.4, 0.6, 1.0], 
  tileMode: TileMode.mirror, 
);
