import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../utils/appbar.dart';
import '../utils/customtextfield.dart';
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

  String email = "veraalmeida@gmail.com";
  String nomeCompleto = "Vera Almeida";
  String dataNascimento = "07/02/1990";
  String idade = "33";
  String genero = "Feminino";
  String profissao = "Professora 07:00 - 17:00";
  String estadoCivil = "Solteira";
  String etnia = "Caucasiana";
  String religiao = "Cristã";
  String naturalidade = "Brasileira";
  String endereco = "Rua Amado Batista";
  String bairro = "Bairro Roseira";
  String cidade = "São João da Boa Vista";
  String telefoneResidencial = "3633-9425";
  String telefoneCelular = "19 98990-2233";
  String escolaridade = "Ensino Superior completo";
  String trabalhaAtualmente = "Sim";
  String trabalhoAtivoParado = "Parado";
  String habitos = "Usar muito as Redes Sociais";
  String rendaFamiliar = "15 mil reais";
  String pressaoArterial = "";
  String frequenciaCardiaca = "";
  String glicemiaCapilar = "";
  String pulso = "";
  String temperatura = "";
  String saturacao = "";
  String frequenciaRespiratoria = "";
  String dores = "";
  String queixaPrincipal = "";
  String patologias = "";
  String antecedentes = "";
  String condicoesGerais = "";
  String marcapasso = "";
  String anticoncepcional = "";
  String cicloMenstrual = "";
  String gestante = "";
  String filhos = "";
  String alergias = "";
  String proteses = "";
  String sono = "";
  String funcionamentoIntestinal = "";
  String eliminacaoFisiologica = "";
  String locomocao = "";
  String tendenciaGanhoPeso = "";
  String efGeral = "";
  String efOlhos = "";
  String efPescoco = "";
  String estadoHigiene = "";
  String fuamente = "";
  String frequenciaAlcoolica = "";

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
                  backgroundImage: NetworkImage(
                      "https://media.istockphoto.com/id/1396403999/pt/foto/look-to-the-future-with-hope.jpg?s=612x612&w=is&k=20&c=oIRcJ6M0moRzcSsDH1SfEYVZ0CtBlZwbY_lIdzx256c="),
                ),
                SizedBox(height: 15),
                Text(
                  "Vera Almeida",
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
                              initialValue: email),
                          CustomTextField(
                              labelText: "Nome Completo",
                              controller: nomeCompletoController,
                              initialValue: nomeCompleto),
                          CustomTextField(
                              labelText: "Data de Nascimento",
                              controller: dataNascimentoController,
                              initialValue: dataNascimento),
                          CustomTextField(
                              labelText: "Idade",
                              controller: idadeController,
                              initialValue: idade),
                          CustomTextField(
                              labelText: "Genero",
                              controller: generoController,
                              initialValue: genero),
                          CustomTextField(
                              labelText: "Profissões e horário de trabalho",
                              controller: profissaoController,
                              initialValue: profissao),
                          CustomTextField(
                              labelText: "Estado civil",
                              controller: estadoCivilController,
                              initialValue: estadoCivil),
                          CustomTextField(
                              labelText: "Etnia",
                              controller: etniaController,
                              initialValue: etnia),
                          CustomTextField(
                              labelText: "Religião",
                              controller: religiaoController,
                              initialValue: religiao),
                          CustomTextField(
                              labelText: "Naturalidade",
                              controller: naturalidadeController,
                              initialValue: naturalidade),
                          CustomTextField(
                              labelText: "Endereço",
                              controller: enderecoController,
                              initialValue: endereco),
                          CustomTextField(
                              labelText: "Bairro",
                              controller: bairroController,
                              initialValue: bairro),
                          CustomTextField(
                              labelText: "Cidade",
                              controller: cidadeController,
                              initialValue: cidade),
                          CustomTextField(
                              labelText: "Telefone Residencial",
                              controller: telefoneResidencialController,
                              initialValue: telefoneResidencial),
                          CustomTextField(
                              labelText: "Telefone Celular",
                              controller: telefoneCelularController,
                              initialValue: telefoneCelular),
                          CustomTextField(
                              labelText: "Escolaridade",
                              controller: escolaridadeController,
                              initialValue: escolaridade),
                          CustomTextField(
                              labelText: "Trabalha Atualmente",
                              controller: trabalhaAtualmenteController,
                              initialValue: trabalhaAtualmente),
                          CustomTextField(
                              labelText: "Seu trabalho é ativo ou parado?",
                              controller: trabalhoAtivoParadoController,
                              initialValue: trabalhoAtivoParado),
                          CustomTextField(
                              labelText: "Hábitos",
                              controller: habitosController,
                              initialValue: habitos),
                          CustomTextField(
                              labelText: "Renda Familiar",
                              controller: rendaFamiliarController,
                              initialValue: rendaFamiliar),
                          CustomTextField(
                              labelText: "Pressão Arterial",
                              controller: pressaoArterialController,
                              initialValue: pressaoArterial),
                          CustomTextField(
                              labelText: "Frequência Cardiaca",
                              controller: frequenciaCardiacaController,
                              initialValue: frequenciaCardiaca),
                          CustomTextField(
                              labelText: "Glicemia Capilar",
                              controller: glicemiaCapilarController,
                              initialValue: glicemiaCapilar),
                          CustomTextField(
                              labelText: "Pulso",
                              controller: pulsoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Temperatura",
                              controller: temperaturaController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Saturação",
                              controller: saturacaoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Frequência Respiratória",
                              controller: frequenciaRespiratoriaController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Possui dor(es) ? Quais ?",
                              controller: doresController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Queixa principal",
                              controller: queixaPrincipalController,
                              initialValue: ""),
                          CustomTextField(
                              labelText:
                                  "Patologias pregressas / Cirurgias Anteriores",
                              controller: patologiasController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Antecedentes familiares",
                              controller: antecedentesController,
                              initialValue: ""),
                          CustomTextField(
                              labelText:
                                  "Condições gerais, medicamentos de uso continuo",
                              controller: condicoesGeraisController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Portador de marcapasso ?",
                              controller: marcapassoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Faz uso de anticoncepcional ? Qual ?",
                              controller: anticoncepcionalController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Possui ciclo menstrual regular ?",
                              controller: cicloMenstrualController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Gestante ?",
                              controller: gestanteController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Possui filhos ? Quantos ?",
                              controller: filhosController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Alergias",
                              controller: alergiasController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Uso de próteses",
                              controller: protesesController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Sono e Repouso? Horas por dia",
                              controller: sonoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Funcionamento intestinal é regular ?",
                              controller: funcionamentoIntestinalController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Eliminição Fisiológica",
                              controller: eliminacaoFisiologicaController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Locomoção",
                              controller: locomocaoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Tendência de ganho de peso",
                              controller: tendenciaGanhoPesoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Exame Fisico: Estado Geral",
                              controller: efGeralController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "E F: Olhos, Ouvidos, Boca e Nariz",
                              controller: efOlhosController,
                              initialValue: ""),
                          CustomTextField(
                              labelText:
                                  "E F: Pescoço, Respiração, Circulação e Pele",
                              controller: efPescocoController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Estado de higiene",
                              controller: estadoHigieneController,
                              initialValue: ""),
                          CustomTextField(
                              labelText: "Fumante",
                              controller: fumaneteController,
                              initialValue: ""),
                          CustomTextField(
                              labelText:
                                  "Sua frequência do uso de bebida alcoólica",
                              controller: frequenciaAlcoolicaController,
                              initialValue: ""),
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
            String email = emailController.text;
            String nomeCompleto = nomeCompletoController.text;
            String dataNascimento = dataNascimentoController.text;
            String idade = idadeController.text;
            String genero = generoController.text;
            String profissao = profissaoController.text;
            String estadoCivil = estadoCivilController.text;
            String etnia = etniaController.text;
            String religiao = religiaoController.text;
            String naturalidade = naturalidadeController.text;
            String endereco = enderecoController.text;
            String bairro = bairroController.text;
            String cidade = cidadeController.text;
            String telefoneResidencial = telefoneResidencialController.text;
            String telefoneCelular = telefoneCelularController.text;
            String escolaridade = escolaridadeController.text;
            String trabalhaAtualmente = trabalhaAtualmenteController.text;
            String trabalhoAtivoParado = trabalhoAtivoParadoController.text;
            String habitos = habitosController.text;
            String rendaFamiliar = rendaFamiliarController.text;
            String pressaoArterial = pressaoArterialController.text;
            String frequenciaCardiaca = frequenciaCardiacaController.text;
            String glicemiaCapilar = glicemiaCapilarController.text;
            String pulso = pulsoController.text;
            String temperatura = temperaturaController.text;
            String saturacao = saturacaoController.text;
            String frequenciaRespiratoria =
                frequenciaRespiratoriaController.text;
            String dores = doresController.text;
            String queixaPrincipal = queixaPrincipalController.text;
            String patologias = patologiasController.text;
            String antecedentes = antecedentesController.text;
            String condicoesGerais = condicoesGeraisController.text;
            String marcapasso = marcapassoController.text;
            String anticoncepcional = anticoncepcionalController.text;
            String cicloMenstrual = cicloMenstrualController.text;
            String gestante = gestanteController.text;
            String filhos = filhosController.text;
            String alergias = alergiasController.text;
            String proteses = protesesController.text;
            String sono = sonoController.text;
            String funcionamentoIntestinal =
                funcionamentoIntestinalController.text;
            String eliminacaoFisiologica = eliminacaoFisiologicaController.text;
            String locomocao = locomocaoController.text;
            String tendenciaGanhoPeso = tendenciaGanhoPesoController.text;
            String efGeral = efGeralController.text;
            String efOlhos = efOlhosController.text;
            String efPescoco = efPescocoController.text;
            String estadoHigiene = estadoHigieneController.text;
            String fuamente = fumaneteController.text;
            String frequenciaAlcoolica = frequenciaAlcoolicaController.text;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'Atualizações feitas',
                textAlign: TextAlign.center,
              ),
              duration: Duration(seconds: 2), // Define a duração de 2 segundos
            ),
          );
        },
        child: Icon(Icons.save),
      ),
    );
  }
}
