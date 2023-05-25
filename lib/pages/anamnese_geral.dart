import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/appbar.dart';
import '../utils/customtextfield.dart';
import '../utils/dados.dart';
import '../utils/drawer.dart';

class AnamneseGeralPage extends StatefulWidget {
  const AnamneseGeralPage({super.key});

  @override
  State<AnamneseGeralPage> createState() => _AnamneseGeralPageState();
}

class _AnamneseGeralPageState extends State<AnamneseGeralPage> {
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
  TextEditingController bairroController = TextEditingController();
  TextEditingController cidadeController = TextEditingController();
  TextEditingController telefoneResidencialController = TextEditingController();
  TextEditingController telefoneCelularController = TextEditingController();
  TextEditingController escolaridadeController = TextEditingController();
  TextEditingController trabalhaAtualmenteController = TextEditingController();
  TextEditingController trabalhoAtivoParadoController = TextEditingController();
  TextEditingController habitosController = TextEditingController();
  TextEditingController rendaFamiliarController = TextEditingController();
  TextEditingController pressaoArterialController = TextEditingController();
  TextEditingController frequenciaCardiacaController = TextEditingController();
  TextEditingController glicemiaCapilarController = TextEditingController();
  TextEditingController pulsoController = TextEditingController();
  TextEditingController temperaturaController = TextEditingController();
  TextEditingController saturacaoController = TextEditingController();
  TextEditingController frequenciaRespiratoriaController =
      TextEditingController();
  TextEditingController doresController = TextEditingController();
  TextEditingController queixaPrincipalController = TextEditingController();
  TextEditingController patologiasController = TextEditingController();
  TextEditingController antecedentesController = TextEditingController();
  TextEditingController condicoesGeraisController = TextEditingController();
  TextEditingController marcapassoController = TextEditingController();
  TextEditingController anticoncepcionalController = TextEditingController();
  TextEditingController cicloMenstrualController = TextEditingController();
  TextEditingController gestanteController = TextEditingController();
  TextEditingController filhosController = TextEditingController();
  TextEditingController alergiasController = TextEditingController();
  TextEditingController protesesController = TextEditingController();
  TextEditingController sonoController = TextEditingController();
  TextEditingController funcionamentoIntestinalController =
      TextEditingController();
  TextEditingController eliminacaoFisiologicaController =
      TextEditingController();
  TextEditingController locomocaoController = TextEditingController();
  TextEditingController tendenciaGanhoPesoController = TextEditingController();
  TextEditingController efGeralController = TextEditingController();
  TextEditingController efOlhosController = TextEditingController();
  TextEditingController efPescocoController = TextEditingController();
  TextEditingController estadoHigieneController = TextEditingController();
  TextEditingController fumaneteController = TextEditingController();
  TextEditingController frequenciaAlcoolicaController = TextEditingController();

  int pacienteId = 0
;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: MyDrawer(),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 45, // Define o raio do avatar
                  backgroundImage:
                      NetworkImage(dados[pacienteId]['foto'].toString()),
                ),
                SizedBox(height: 15),
                Text(
                  dados[pacienteId]['nomeCompleto'].toString(),
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF00A896)
                        .withOpacity(0.4), // Define o raio para as bordas
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.health_and_safety,
                          size: 50,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Geral",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
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
                      child: Column(
                        children: [
                          CustomTextField(
                              labelText: "Email",
                              controller: emailController,
                              initialValue:
                                  dados[pacienteId]['email'].toString()),
                          CustomTextField(
                              labelText: "Nome Completo",
                              controller: nomeCompletoController,
                              initialValue:
                                  dados[pacienteId]['nomeCompleto'].toString()),
                          CustomTextField(
                              labelText: "Data de Nascimento",
                              controller: dataNascimentoController,
                              initialValue: dados[pacienteId]['dataNascimento']
                                  .toString()),
                          CustomTextField(
                              labelText: "Idade",
                              controller: idadeController,
                              initialValue:
                                  dados[pacienteId]['idade'].toString()),
                          CustomTextField(
                              labelText: "Genero",
                              controller: generoController,
                              initialValue:
                                  dados[pacienteId]['genero'].toString()),
                          CustomTextField(
                              labelText: "Profissões e horário de trabalho",
                              controller: profissaoController,
                              initialValue:
                                  dados[pacienteId]['profissao'].toString()),
                          CustomTextField(
                              labelText: "Estado civil",
                              controller: estadoCivilController,
                              initialValue:
                                  dados[pacienteId]['estadoCivil'].toString()),
                          CustomTextField(
                              labelText: "Etnia",
                              controller: etniaController,
                              initialValue:
                                  dados[pacienteId]['etnia'].toString()),
                          CustomTextField(
                              labelText: "Religião",
                              controller: religiaoController,
                              initialValue:
                                  dados[pacienteId]['religiao'].toString()),
                          CustomTextField(
                              labelText: "Naturalidade",
                              controller: naturalidadeController,
                              initialValue:
                                  dados[pacienteId]['naturalidade'].toString()),
                          CustomTextField(
                              labelText: "Endereço",
                              controller: enderecoController,
                              initialValue:
                                  dados[pacienteId]['endereco'].toString()),
                          CustomTextField(
                              labelText: "Bairro",
                              controller: bairroController,
                              initialValue:
                                  dados[pacienteId]['bairro'].toString()),
                          CustomTextField(
                              labelText: "Cidade",
                              controller: cidadeController,
                              initialValue:
                                  dados[pacienteId]['cidade'].toString()),
                          CustomTextField(
                              labelText: "Telefone Residencial",
                              controller: telefoneResidencialController,
                              initialValue: dados[pacienteId]
                                      ['telefoneResidencial']
                                  .toString()),
                          CustomTextField(
                              labelText: "Telefone Celular",
                              controller: telefoneCelularController,
                              initialValue: dados[pacienteId]['telefoneCelular']
                                  .toString()),
                          CustomTextField(
                              labelText: "Escolaridade",
                              controller: escolaridadeController,
                              initialValue:
                                  dados[pacienteId]['escolaridade'].toString()),
                          CustomTextField(
                              labelText: "Trabalha Atualmente",
                              controller: trabalhaAtualmenteController,
                              initialValue: dados[pacienteId]
                                      ['trabalhaAtualmente']
                                  .toString()),
                          CustomTextField(
                              labelText: "Seu trabalho é ativo ou parado?",
                              controller: trabalhoAtivoParadoController,
                              initialValue: dados[pacienteId]
                                      ['trabalhoAtivoParado']
                                  .toString()),
                          CustomTextField(
                              labelText: "Hábitos",
                              controller: habitosController,
                              initialValue:
                                  dados[pacienteId]['habitos'].toString()),
                          CustomTextField(
                              labelText: "Renda Familiar",
                              controller: rendaFamiliarController,
                              initialValue: dados[pacienteId]['rendaFamiliar']
                                  .toString()),
                          CustomTextField(
                              labelText: "Pressão Arterial",
                              controller: pressaoArterialController,
                              initialValue: dados[pacienteId]['pressaoArterial']
                                  .toString()),
                          CustomTextField(
                              labelText: "Frequência Cardiaca",
                              controller: frequenciaCardiacaController,
                              initialValue: dados[pacienteId]
                                      ['frequenciaCardiaca']
                                  .toString()),
                          CustomTextField(
                              labelText: "Glicemia Capilar",
                              controller: glicemiaCapilarController,
                              initialValue: dados[pacienteId]['glicemiaCapilar']
                                  .toString()),
                          CustomTextField(
                              labelText: "Pulso",
                              controller: pulsoController,
                              initialValue:
                                  dados[pacienteId]['pulso'].toString()),
                          CustomTextField(
                              labelText: "Temperatura",
                              controller: temperaturaController,
                              initialValue:
                                  dados[pacienteId]['temperatura'].toString()),
                          CustomTextField(
                              labelText: "Saturação",
                              controller: saturacaoController,
                              initialValue:
                                  dados[pacienteId]['saturacao'].toString()),
                          CustomTextField(
                              labelText: "Frequência Respiratória",
                              controller: frequenciaRespiratoriaController,
                              initialValue: dados[pacienteId]
                                      ['frequenciaRespiratoria']
                                  .toString()),
                          CustomTextField(
                              labelText: "Possui dor(es) ? Quais ?",
                              controller: doresController,
                              initialValue:
                                  dados[pacienteId]['dores'].toString()),
                          CustomTextField(
                              labelText: "Queixa principal",
                              controller: queixaPrincipalController,
                              initialValue: dados[pacienteId]['queixaPrincipal']
                                  .toString()),
                          CustomTextField(
                              labelText:
                                  "Patologias pregressas / Cirurgias Anteriores",
                              controller: patologiasController,
                              initialValue:
                                  dados[pacienteId]['patologias'].toString()),
                          CustomTextField(
                              labelText: "Antecedentes familiares",
                              controller: antecedentesController,
                              initialValue:
                                  dados[pacienteId]['antecedentes'].toString()),
                          CustomTextField(
                              labelText:
                                  "Condições gerais, medicamentos de uso continuo",
                              controller: condicoesGeraisController,
                              initialValue: dados[pacienteId]['condicoesGerais']
                                  .toString()),
                          CustomTextField(
                              labelText: "Portador de marcapasso ?",
                              controller: marcapassoController,
                              initialValue:
                                  dados[pacienteId]['marcapasso'].toString()),
                          CustomTextField(
                              labelText: "Faz uso de anticoncepcional ? Qual ?",
                              controller: anticoncepcionalController,
                              initialValue: dados[pacienteId]
                                      ['anticoncepcional']
                                  .toString()),
                          CustomTextField(
                              labelText: "Possui ciclo menstrual regular ?",
                              controller: cicloMenstrualController,
                              initialValue: dados[pacienteId]['cicloMenstrual']
                                  .toString()),
                          CustomTextField(
                              labelText: "Gestante ?",
                              controller: gestanteController,
                              initialValue:
                                  dados[pacienteId]['gestante'].toString()),
                          CustomTextField(
                              labelText: "Possui filhos ? Quantos ?",
                              controller: filhosController,
                              initialValue:
                                  dados[pacienteId]['filhos'].toString()),
                          CustomTextField(
                              labelText: "Alergias",
                              controller: alergiasController,
                              initialValue:
                                  dados[pacienteId]['alergias'].toString()),
                          CustomTextField(
                              labelText: "Uso de próteses",
                              controller: protesesController,
                              initialValue:
                                  dados[pacienteId]['proteses'].toString()),
                          CustomTextField(
                              labelText: "Sono e Repouso? Horas por dia",
                              controller: sonoController,
                              initialValue:
                                  dados[pacienteId]['sono'].toString()),
                          CustomTextField(
                              labelText: "Funcionamento intestinal é regular ?",
                              controller: funcionamentoIntestinalController,
                              initialValue: dados[pacienteId]
                                      ['funcionamentoIntestinal']
                                  .toString()),
                          CustomTextField(
                              labelText: "Eliminição Fisiológica",
                              controller: eliminacaoFisiologicaController,
                              initialValue: dados[pacienteId]
                                      ['eliminacaoFisiologica']
                                  .toString()),
                          CustomTextField(
                              labelText: "Locomoção",
                              controller: locomocaoController,
                              initialValue:
                                  dados[pacienteId]['locomocao'].toString()),
                          CustomTextField(
                              labelText: "Tendência de ganho de peso",
                              controller: tendenciaGanhoPesoController,
                              initialValue: dados[pacienteId]
                                      ['tendenciaGanhoPeso']
                                  .toString()),
                          CustomTextField(
                              labelText: "Exame Fisico: Estado Geral",
                              controller: efGeralController,
                              initialValue:
                                  dados[pacienteId]['efGeral'].toString()),
                          CustomTextField(
                              labelText: "E F: Olhos, Ouvidos, Boca e Nariz",
                              controller: efOlhosController,
                              initialValue:
                                  dados[pacienteId]['efOlhos'].toString()),
                          CustomTextField(
                              labelText:
                                  "E F: Pescoço, Respiração, Circulação e Pele",
                              controller: efPescocoController,
                              initialValue:
                                  dados[pacienteId]['efPescoco'].toString()),
                          CustomTextField(
                              labelText: "Estado de higiene",
                              controller: estadoHigieneController,
                              initialValue: dados[pacienteId]['estadoHigiene']
                                  .toString()),
                          CustomTextField(
                              labelText: "Fumante",
                              controller: fumaneteController,
                              initialValue:
                                  dados[pacienteId]['fumante'].toString()),
                          CustomTextField(
                              labelText:
                                  "Sua frequência do uso de bebida alcoólica",
                              controller: frequenciaAlcoolicaController,
                              initialValue: dados[pacienteId]
                                      ['frequenciaAlcoolica']
                                  .toString()),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            dados[pacienteId]['email'] = emailController.text;
            dados[pacienteId]['nomeCompleto'] = nomeCompletoController.text;
            dados[pacienteId]['dataNascimento'] = dataNascimentoController.text;
            dados[pacienteId]['idade'] = idadeController.text;
            dados[pacienteId]['genero'] = generoController.text;
            dados[pacienteId]['profissao'] = profissaoController.text;
            dados[pacienteId]['estadoCivil'] = estadoCivilController.text;
            dados[pacienteId]['etnia'] = etniaController.text;
            dados[pacienteId]['religiao'] = religiaoController.text;
            dados[pacienteId]['naturalidade'] = naturalidadeController.text;
            dados[pacienteId]['endereco'] = enderecoController.text;
            dados[pacienteId]['bairro'] = bairroController.text;
            dados[pacienteId]['cidade'] = cidadeController.text;
            dados[pacienteId]['telefoneResidencial'] =
                telefoneResidencialController.text;
            dados[pacienteId]['telefoneCelular'] =
                telefoneCelularController.text;
            dados[pacienteId]['escolaridade'] = escolaridadeController.text;
            dados[pacienteId]['trabalhaAtualmente'] =
                trabalhaAtualmenteController.text;
            dados[pacienteId]['trabalhoAtivoParado'] =
                trabalhoAtivoParadoController.text;
            dados[pacienteId]['habitos'] = habitosController.text;
            dados[pacienteId]['rendaFamiliar'] = rendaFamiliarController.text;
            dados[pacienteId]['pressaoArterial'] =
                pressaoArterialController.text;
            dados[pacienteId]['frequenciaCardiaca'] =
                frequenciaCardiacaController.text;
            dados[pacienteId]['glicemiaCapilar'] =
                glicemiaCapilarController.text;
            dados[pacienteId]['pulso'] = pulsoController.text;
            dados[pacienteId]['temperatura'] = temperaturaController.text;
            dados[pacienteId]['saturacao'] = saturacaoController.text;
            dados[pacienteId]['frequenciaRespiratoria'] =
                frequenciaRespiratoriaController.text;
            dados[pacienteId]['dores'] = doresController.text;
            dados[pacienteId]['queixaPrincipal'] =
                queixaPrincipalController.text;
            dados[pacienteId]['patologias'] = patologiasController.text;
            dados[pacienteId]['antecedentes'] = antecedentesController.text;
            dados[pacienteId]['condicoesGerais'] =
                condicoesGeraisController.text;
            dados[pacienteId]['marcapasso'] = marcapassoController.text;
            dados[pacienteId]['anticoncepcional'] =
                anticoncepcionalController.text;
            dados[pacienteId]['cicloMenstrual'] = cicloMenstrualController.text;
            dados[pacienteId]['gestante'] = gestanteController.text;
            dados[pacienteId]['filhos'] = filhosController.text;
            dados[pacienteId]['alergias'] = alergiasController.text;
            dados[pacienteId]['proteses'] = protesesController.text;
            dados[pacienteId]['sono'] = sonoController.text;
            dados[pacienteId]['funcionamentoIntestinal'] =
                funcionamentoIntestinalController.text;
            dados[pacienteId]['eliminacaoFisiologica'] =
                eliminacaoFisiologicaController.text;
            dados[pacienteId]['locomocao'] = locomocaoController.text;
            dados[pacienteId]['tendenciaGanhoPeso'] =
                tendenciaGanhoPesoController.text;
            dados[pacienteId]['efGeral'] = efGeralController.text;
            dados[pacienteId]['efOlhos'] = efOlhosController.text;
            dados[pacienteId]['efPescoco'] = efPescocoController.text;
            dados[pacienteId]['estadoHigiene'] = estadoHigieneController.text;
            dados[pacienteId]['fumante'] = fumaneteController.text;
            dados[pacienteId]['frequenciaAlcoolica'] =
                frequenciaAlcoolicaController.text;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Atualizações feitas',
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 3),
              action: SnackBarAction(
                label: 'X',
                textColor: Colors.white,
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
            ),
          );
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
