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
                          CustomTextField(labelText: "Email"),
                          CustomTextField(labelText: "Nome Completo"),
                          CustomTextField(labelText: "Data de Nascimento"),
                          CustomTextField(labelText: "Idade"),
                          CustomTextField(labelText: "Genero"),
                          CustomTextField(labelText: "Profissões e horário de trabalho"),
                          CustomTextField(labelText: "Estado civil"),
                          CustomTextField(labelText: "Etnia"),
                          CustomTextField(labelText: "Religião"),
                          CustomTextField(labelText: "Naturalidade"),
                          CustomTextField(labelText: "Endereço"),
                          CustomTextField(labelText: "Bairro"),
                          CustomTextField(labelText: "Cidade"),
                          CustomTextField(labelText: "Telefone Residencial"),
                          CustomTextField(labelText: "Telefone Celular"),
                          CustomTextField(labelText: "Escolaridade"),
                          CustomTextField(labelText: "Trabalha Atualmente"),
                          CustomTextField(labelText: "Seu trabalho é ativo ou parado?"),
                          CustomTextField(labelText: "Hábitos"),
                          CustomTextField(labelText: "Renda Familiar"),
                          CustomTextField(labelText: "Pressão Arterial"),
                          CustomTextField(labelText: "Frequência Cardiaca"),
                          CustomTextField(labelText: "Glicemia Capilar"),
                          CustomTextField(labelText: "Pulso"),
                          CustomTextField(labelText: "Temperatura"),
                          CustomTextField(labelText: "Saturação"),
                          CustomTextField(labelText: "Frequência Respiratória"),
                          CustomTextField(labelText: "Possui dor(es) ? Quais ?"),
                          CustomTextField(labelText: "Queixa principal"),
                          CustomTextField(labelText: "Patologias pregressas / Cirurgias Anteriores"),
                          CustomTextField(labelText: "Antecedentes familiares"),
                          CustomTextField(labelText: "Condições gerais, medicamentos de uso continuo"),
                          CustomTextField(labelText: "Portador de marcapasso ?"),
                          CustomTextField(labelText: "Faz uso de anticoncepcional ? Qual ?"),
                          CustomTextField(labelText: "Possui ciclo menstrual regular ?"),
                          CustomTextField(labelText: "Gestante ?"),
                          CustomTextField(labelText: "Possui filhos ? Quantos ?"),
                          CustomTextField(labelText: "Alergias"),
                          CustomTextField(labelText: "Uso de próteses"),
                          CustomTextField(labelText: "Sono e Repouso? Horas por dia"),
                          CustomTextField(labelText: "Funcionamento intestinal é regular ?"),
                          CustomTextField(labelText: "Eliminição Fisiológica"),
                          CustomTextField(labelText: "Locomoção"),
                          CustomTextField(labelText: "Tendência de ganho de peso"),
                          CustomTextField(labelText: "Exame Fisico: Estado Geral"),
                          CustomTextField(labelText: "E F: Pescoço, Respiração, Circulação e Pele"),
                          CustomTextField(labelText: "Estado de higiene"),
                          CustomTextField(labelText: "Fumante"),
                          CustomTextField(labelText: "Sua frequência do uso de bebida alcoólica"),

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
    );
  }
}

