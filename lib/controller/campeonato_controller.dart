import 'package:brasileirao_2022/repository/campeonato_repository.dart';

class CampeonatoController {
  final _campeonatoRepository = CampeonatoRepository();

  campeonato() async {
    final campeonato = await _campeonatoRepository.campeonato();
    campeonato.forEach(print);
  }
}
