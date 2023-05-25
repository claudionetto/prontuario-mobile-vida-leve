import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vida_leve/pages/anamnese_geral.dart';
import 'package:vida_leve/utils/customtextfield.dart';
import 'package:vida_leve/utils/dados.dart';
import 'package:vida_leve/utils/drawer.dart';
import 'package:vida_leve/utils/global.dart';

import '../utils/appbar.dart';

class PerfilPaciente extends StatefulWidget {
  const PerfilPaciente({super.key});

  @override
  State<PerfilPaciente> createState() => _PerfilPacienteState();
}

class _PerfilPacienteState extends State<PerfilPaciente> {
  final pacienteId = Globals.pacienteId;
  TextEditingController emailController = TextEditingController();
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController profissaoController = TextEditingController();
  TextEditingController estadoCivilController = TextEditingController();
  TextEditingController etniaController = TextEditingController();
  TextEditingController religiaoController = TextEditingController();
  TextEditingController naturalidadeController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController complementoController = TextEditingController();
  TextEditingController bairroController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController estadoController = TextEditingController();

  TextEditingController telefoneResidencialController = TextEditingController();
  TextEditingController telefoneCelularController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();

  String getInitialValue(Map<String, dynamic> data, String key) {
    return data[key] != null ? data[key].toString() : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MyDrawer(),
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              child: Column(children: [
                CircleAvatar(
                    radius: 45, // Define o raio do avatar
                    backgroundImage:
                        NetworkImage(dados[pacienteId]['foto'].toString())),
                SizedBox(height: 15),
                Text(
                  dados[pacienteId]['nomeCompleto'].toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Informações Pessoais',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF00A896),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: CustomTextField(
                        labelText: "Data de Nascimento",
                        controller: dataNascimentoController,
                        initialValue: getInitialValue(
                            dados[pacienteId], 'dataNascimento'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomTextField(
                        labelText: "Idade",
                        controller: idadeController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'idade'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 7,
                      child: CustomTextField(
                        labelText: "Naturalidade",
                        controller: naturalidadeController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'naturalidade'),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: CustomTextField(
                        labelText: "Genero",
                        controller: generoController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'genero'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CustomTextField(
                        labelText: "Etnia",
                        controller: etniaController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'etnia'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomTextField(
                        labelText: "Altura",
                        controller: alturaController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'altura'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomTextField(
                        labelText: "Peso",
                        controller: pesoController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'peso'),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: CustomTextField(
                        labelText: "Religião",
                        controller: religiaoController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'religiao'),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomTextField(
                        labelText: "Estado civil",
                        controller: estadoCivilController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'estadoCivil'),
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  labelText: "Profissões e horário de trabalho",
                  controller: profissaoController,
                  initialValue: getInitialValue(dados[pacienteId], 'profissao'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Informações de contato',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                      color: Color(0xFF00A896),
                    ),
                  ),
                ),
                CustomTextField(
                  labelText: "Endereço",
                  controller: enderecoController,
                  initialValue: getInitialValue(dados[pacienteId], 'endereco'),
                ),
                CustomTextField(
                  labelText: "Complemento",
                  controller: complementoController,
                  initialValue:
                      getInitialValue(dados[pacienteId], 'complemento'),
                ),
                CustomTextField(
                  labelText: "Bairro",
                  controller: bairroController,
                  initialValue: getInitialValue(dados[pacienteId], 'bairro'),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: CustomTextField(
                        labelText: "Cidade",
                        controller: cidadeController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'cidade'),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: CustomTextField(
                        labelText: "Estado",
                        controller: estadoController,
                        initialValue:
                            getInitialValue(dados[pacienteId], 'estado'),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ]),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/anamnese");
          },
          child: Icon(Icons.add),
        ));
  }
}
