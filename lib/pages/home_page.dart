import 'package:flutter/material.dart';
import 'package:vida_leve/utils/appbar.dart';
import 'package:vida_leve/utils/drawer.dart';
import 'package:vida_leve/utils/dados_agenda.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    dadosAgenda.sort((a, b) {
      final dataA = DateFormat('dd/MM/yyyy').parse(a['data']!);
      final dataB = DateFormat('dd/MM/yyyy').parse(b['data']!);
      return dataA.compareTo(dataB);
    });
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Agenda Semanal',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00A896),
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Expanded(
            flex: 9,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 16.0),
              child: SizedBox(
                height: 400.0,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: dadosAgenda.length,
                  itemBuilder: (BuildContext context, int index) {
                    String nome = dadosAgenda[index]['nome'].toString();
                    String data = dadosAgenda[index]['data'].toString();
                    String horario = dadosAgenda[index]['horario'].toString();
                    String descricao =
                        dadosAgenda[index]['descricao'].toString();

                    DateTime dataEvento = DateFormat('dd/MM/yyyy').parse(data);

                    DateTime dataAtual = DateTime.now();

                    // Calcula a diferença em dias entre a data atual e a data do evento
                    int diferencaDias = dataEvento.difference(dataAtual).inDays;

                    Color cor;
                    if (diferencaDias < 0) {
                      cor = const Color(0xFFE78F8F);
                    } else if (diferencaDias == 0) {
                      cor = const Color(0xFF03C7B3);
                    } else if (diferencaDias >= 1 && diferencaDias <= 3) {
                      cor = const Color(0xFF088EC4); // Próximos 2 dias
                    } else {
                      cor = const Color(0xFF05668D); // Depois de 2 dias
                    }

                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 5),
                      decoration: BoxDecoration(
                        color: cor,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  nome,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '$data  $horario',
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              descricao,
                              style: const TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/calendario");
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Agenda Completa',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/pacientes");
                    },
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      'Pacientes' ,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
