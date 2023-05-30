import 'package:flutter/material.dart';
import 'package:vida_leve/utils/appbar.dart';
import 'package:vida_leve/utils/drawer.dart';
import 'package:vida_leve/utils/global.dart';

class AnamnesePage extends StatefulWidget {
  const AnamnesePage({super.key});

  @override
  State<AnamnesePage> createState() => _AnamnesePageState();
}

class _AnamnesePageState extends State<AnamnesePage> {
  @override
  void initState() {
    super.initState();
    // Chame a função desejada aqui
    Globals.isEditing = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MyDrawer(),
      appBar: const MyAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 25),
        child: SizedBox(
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Anamnese',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  color: Color(0xFF00A896),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                thickness: 0.5, // Espessura da linha
                color: Color(0xFF00A896), // Cor da linha
              ),
              const SizedBox(height: 40),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/anamnese_geral");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF00A896).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(
                                10), // Define o raio para as bordas
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.health_and_safety,
                                size: 70,
                              ),
                              Text("Geral",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/anamnese_nutricao");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF0C8E09).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(
                                10), // Define o raio para as bordas
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.menu_book,
                                size: 70,
                              ),
                              Text("Nutrição",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/anamnese_psicologia");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF2764FF).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(
                                10), // Define o raio para as bordas
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.psychology,
                                size: 70,
                              ),
                              Text("Psicologia",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/anamnese_farmacia");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFAFF00).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(
                                10), // Define o raio para as bordas
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.medication,
                                size: 70,
                              ),
                              Text("Farmácia",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, "/anamnese_educacao_fisica");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF00FF19).withOpacity(0.4),
                            borderRadius: BorderRadius.circular(
                                10), // Define o raio para as bordas
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.pool,
                                size: 70,
                              ),
                              Text("Educação Física",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
