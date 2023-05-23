import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CookieAdvice extends StatefulWidget {
  const CookieAdvice({super.key});

  @override
  State<CookieAdvice> createState() => _CookieState();
}

class _CookieState extends State<CookieAdvice> {

  Future<List> catchAdvice() async {
    var url = Uri.parse('https://api.adviceslip.com/advice');
    var response = await http.get(url);

    if(response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error obtain data from the server');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
      future: catchAdvice(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Deu erro carai'));
        } 

        if (snapshot.hasData) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index){
              return Text(snapshot.data![index]['advice']); 
            },
          );
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    );
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