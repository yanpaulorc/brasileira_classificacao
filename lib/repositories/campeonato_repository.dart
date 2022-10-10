import 'dart:convert';

import 'package:http/http.dart' as http;
import '../model/times.dart';

class CampeonatoRepository {
  var url = 'https://www.scorebat.com/api/competition/2/brasil-serie-a';

  Future<List<Times>> campeonato() async {
    final response = await http.get(Uri.parse(url));
    final responseMap = jsonDecode(response.body);
    final dadosMap = responseMap['response']['standings']['rows'];
    final List dadosLista = dadosMap;
    return dadosLista.map<Times>((times) {
      return Times.fromMap(times);
    }).toList();
  }
}
