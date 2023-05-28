import 'package:flutter/material.dart';
import '../models/advice.dart';
import 'repository.dart';

class CookieAdvice extends StatefulWidget {
  const CookieAdvice({super.key});

  @override
  State<CookieAdvice> createState() => _CookieState();
}

class _CookieState extends State<CookieAdvice> {

  Future<List<Advice>>? futureAdvices;

  @override
  void initState() {
    futureAdvices = getAdvice();
    super.initState();
  }

  bool _mostrarImagem = true;
  void _alternarWidget() {
    setState(() {
      _mostrarImagem = !_mostrarImagem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Advice>>(
        future: getAdvice(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('Deu erro mano'));
          } else if (snapshot.hasData) {
            return GestureDetector(
              onTap: () => _alternarWidget(),
              child: _mostrarImagem
                  ? Container(
                      height: 200,
                      color: Colors.red,
                      child: Image.asset(
                        'assets/images/fortune_cookie.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  : Text('${snapshot.data}'),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}