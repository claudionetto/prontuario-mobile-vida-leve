import 'package:flutter/material.dart';
import 'package:vida_leve/utils/appbar.dart';
import 'package:vida_leve/utils/dados.dart';
import 'package:vida_leve/utils/dados_agenda.dart';
import 'package:vida_leve/utils/drawer.dart';
import 'package:vida_leve/utils/global.dart';

class CadastroConsulta extends StatefulWidget {
  @override
  _CadastroConsultaPage createState() => _CadastroConsultaPage();
}

class _CadastroConsultaPage extends State<CadastroConsulta> {
  late int selectedPacienteId;
  String horarioConsulta = '';
  String descricaoConsulta = '';

  @override
  void initState() {
    super.initState();
    // Inicializando a variável selectedPacienteId com o primeiro ID de paciente da lista dados
    selectedPacienteId = Globals.pacienteId;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: MyAppBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
                            Text(
                Globals.diaSelecionado
                      ,style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          ),
              ),
              SizedBox(height: 20.0),
              CircleAvatar(
                backgroundImage:
                    NetworkImage(dados[selectedPacienteId]['foto'].toString()),
                radius: 50,
              ),
              SizedBox(height: 25.0),
              Text(
                'Selecione um paciente:', style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                          ),
              ),
              SizedBox(height: 5),
              DropdownButtonFormField<int>(
                value: selectedPacienteId,
                items: dados.map((paciente) {
                  return DropdownMenuItem<int>(
                    value: int.parse(paciente['id'].toString()),
                    child: Text(paciente['nomeCompleto'].toString()),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedPacienteId = value!;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Horário da consulta: ',style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",)
              ),
              SizedBox(height: 5),
              TextField(
                onChanged: (value) {
                  setState(() {
                    horarioConsulta = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Descrição da consulta:',style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",)
              ),
              SizedBox(height: 5),
              TextField(
                onChanged: (value) {
                  setState(() {
                    descricaoConsulta = value;
                  });
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Map<String, String> novaConsulta = {
                        'nome': dados[selectedPacienteId]['nomeCompleto']
                            .toString(),
                        'data': Globals.diaSelecionado.toString(),
                        'horario': horarioConsulta.toString(),
                        'descricao': descricaoConsulta.toString(),
                      };
                      dadosAgenda.add(novaConsulta);
                    });
                    Navigator.pushReplacementNamed(context, "/home");
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Cadastrar Consulta',
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins"),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}
