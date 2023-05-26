import 'dart:io';
import 'package:flutter/material.dart';
import 'components/cookie_advice.dart';

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
        /* appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.white,
          elevation: 0,
        ), */
        body: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 220, 0, 30),
                child: const Text(
                  'Crack the Cookie 🥠',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                ),
              ),
              CookieAdvice(),
            ],
          ),
        ),
      ),
    );
  }
}