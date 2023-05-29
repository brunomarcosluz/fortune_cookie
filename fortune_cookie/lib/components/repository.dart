import 'package:http/http.dart' as http;
import '../models/advice.dart';
import 'dart:convert';

Future<List<Advice>> getAdvice() async {

    var response = await http.get(Uri.parse('https://api.adviceslip.com/advice'));
    final json = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return List<Advice>.from(json.map((elemento) { // estou travado aqui nessa merda
        return Advice.fromJson(elemento);
      }));
    } else {
      throw Exception('Error obtain data from the server');
    }
  }