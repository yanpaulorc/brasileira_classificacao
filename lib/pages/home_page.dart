import 'package:brasileirao_2022/controller/campeonato_controller.dart';
import 'package:flutter/material.dart';
import '../model/times.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CampeonatoController controller = CampeonatoController();
  Future<List<Times>>? times;

  @override
  initState() {
    super.initState();
    times = controller.campeonato();
  }

  var urlImg = 'https://s3.amazonaws.com/bookmkrs/img/logos/mini/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Brasileirão'),
        backgroundColor: Colors.purple,
      ),
      body: FutureBuilder<List<Times>>(
          future: times,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                final Times time = snapshot.data![index];
                return ListTile(
                  leading: Text(
                    '${time.row}º',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: [
                      SizedBox(
                        width: 35,
                        height: 35,
                        child: Image.network('$urlImg${time.teamScId}.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: SizedBox(width: 120, child: Text(time.team)),
                      ),
                    ],
                  ),
                  trailing: Text(
                    '${time.p}    ${time.pnt}',
                    textAlign: TextAlign.end,
                  ),
                );
              },
            );
          }),
    );
  }
}
