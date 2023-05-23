import 'package:flutter/material.dart';

void main() {
  runApp(const FortuneCookie());
}

class FortuneCookie extends StatelessWidget {
  const FortuneCookie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 60, 0, 30),
                child: Text(
                  'Crack the Cookie 🥠',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
              Container(
                child: Image.asset(
                  'assets/1.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}