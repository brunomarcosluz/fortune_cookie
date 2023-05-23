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
          title: const Text('Fortune Cookie App'),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                child: Text('Crack the Cookie'),
              ),
              Container(
                child: Placeholder(),
              )
            ],
          ),
        ),
      ),
    );
  }
}