import 'package:flutter/material.dart';
import 'package:tik_tac_toe_game/Home_screen.dart';
import 'package:tik_tac_toe_game/game_screen.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => Homescreen(),
      }));
}
