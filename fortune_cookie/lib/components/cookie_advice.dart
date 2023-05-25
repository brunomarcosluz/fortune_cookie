import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CookieAdvice extends StatefulWidget {
  const CookieAdvice({super.key});

  @override
  State<CookieAdvice> createState() => _CookieState();
}

class _CookieState extends State<CookieAdvice> {
  Future<Map<String, dynamic>> catchAdvice() async {
    var url = Uri.parse('https://api.adviceslip.com/advice');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error obtain data from the server');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
        future: catchAdvice(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text('Deu erro mano'));
          } else if (snapshot.hasData) {
            return GestureDetector(
              onTap: () {
                
              },
              child: Container(
                height: 200,
                color: Colors.red,
                child: Image.asset(
                  'assets/images/fortune_cookie.png',
                  fit: BoxFit.cover,
                ),
              ));
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

/* Container(
      height: 200,
      color: Colors.red,
      child: Image.asset(
        'assets/images/fortune_cookie.png',
        fit: BoxFit.cover,
      ),
    );*/