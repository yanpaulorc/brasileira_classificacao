import 'package:brasileirao_2022/repository/campeonato_repository.dart';

import '../model/times.dart';

class CampeonatoController {
  final _campeonatoRepository = CampeonatoRepository();

  Future<List<Times>> campeonato() async {
    return await _campeonatoRepository.campeonato();
  }
}
