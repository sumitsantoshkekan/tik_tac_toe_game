import 'package:flutter/material.dart';
import 'package:tik_tac_toe_game/game_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final TextEditingController player1Controller = TextEditingController();
  final TextEditingController player2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enter Players Name",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                controller: player1Controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: "Player 1 Name",
                    hintStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "PLZ Enter Player1 Name";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                controller: player2Controller,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)),
                    hintText: "Player 2 Name",
                    hintStyle: TextStyle(color: Colors.white)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Plz Enter Player2 Name";
                  }
                  return null;
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => gamescreen(
                              player1: player1Controller.text,
                              player2: player2Controller.text)));
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 20),
                child: Text(
                  "Start Game",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
