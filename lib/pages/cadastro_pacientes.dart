import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:vida_leve/utils/appbar.dart';
import 'package:vida_leve/utils/dados.dart';
import 'package:vida_leve/utils/drawer.dart';

class CadastroPacientes extends StatefulWidget {
  const CadastroPacientes({super.key});

  @override
  State<CadastroPacientes> createState() => _CadastroPacientesState();
}

class _CadastroPacientesState extends State<CadastroPacientes> {
  TextEditingController nomeCompletoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController fotoController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController idadeController = TextEditingController();
  TextEditingController naturalidadeController = TextEditingController();
  TextEditingController generoController = TextEditingController();
  TextEditingController etniaController = TextEditingController();

  TextEditingController alturaController = TextEditingController();
  TextEditingController pesoController = TextEditingController();
  TextEditingController religiaoController = TextEditingController();

  TextEditingController estadoCivilController = TextEditingController();
  TextEditingController profissaoController = TextEditingController();
  TextEditingController enderecoController = TextEditingController();
  TextEditingController complementoController = TextEditingController();
  TextEditingController bairroController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController estadoController = TextEditingController();
  TextEditingController telefoneCelularController = TextEditingController();
  TextEditingController telefoneResidencialController = TextEditingController();

  TextEditingController escolaridadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Cadastro de Pacientes',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                    color: Color(0xFF00A896),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF7F5FF).withOpacity(0.95),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
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
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: nomeCompletoController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Nome Completo",
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: fotoController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Foto (URL)",
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: TextFormField(
                                controller: dataNascimentoController,
                                decoration: InputDecoration(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                  labelText: "Data de Nascimento",
                                  labelStyle:
                                      TextStyle(color: Color(0xFF00A896)),
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xFF00A896), width: 2.0),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  focusColor: Colors.white,
                                ),
                              )),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: idadeController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Idade",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: naturalidadeController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Naturalidade",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: generoController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Genero",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: etniaController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Etnia",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: alturaController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Altura",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: pesoController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Peso",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: religiaoController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Religião",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: estadoCivilController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Estado Civil",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: profissaoController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Profissão / Horário de Trabalho",
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
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
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: emailController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Email",
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: enderecoController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Endereço residencial",
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: complementoController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: "Complemento",
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: bairroController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: ("Bairro"),
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: cidadeController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Cidade",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: TextFormField(
                              controller: estadoController,
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelText: "Estado",
                                labelStyle: TextStyle(color: Color(0xFF00A896)),
                                fillColor: Colors.white,
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF00A896)),
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFF00A896), width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: telefoneCelularController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: ("Celular Pessoal"),
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        controller: telefoneResidencialController,
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: ("Telefone Residencial"),
                          labelStyle: TextStyle(color: Color(0xFF00A896)),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00A896)),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFF00A896), width: 2.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusColor: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, top: 5),
              child: ElevatedButton(
                onPressed: () {
                  Map<String, String> novoElemento = {
                    'foto': fotoController.text,
                    'email': emailController.text,
                    'nomeCompleto': nomeCompletoController.text,
                    'dataNascimento': dataNascimentoController.text,
                    'idade': idadeController.text,
                    'genero': generoController.text,
                    'profissao': profissaoController.text,
                    'estadoCivil': estadoCivilController.text,
                    'etnia': etniaController.text,
                    'religiao': religiaoController.text,
                                        'altura': alturaController.text,
                    'peso': pesoController.text,
                    'naturalidade': naturalidadeController.text,
                    'endereco': enderecoController.text,
                    'complemento': complementoController.text,
                    'bairro': bairroController.text,
                    'cidade': cidadeController.text,
                    'estado': estadoController.text,
                    'telefoneResidencial': telefoneResidencialController.text,
                    'telefoneCelular': telefoneCelularController.text,
                    'escolaridade': escolaridadeController.text,
                  };

                  dados.add(novoElemento);

                  Navigator.pushReplacementNamed(context, "/pacientes");
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 20.0),
                  textStyle: const TextStyle(fontSize: 20.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Cadastrar Paciente',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
