import 'package:flutter/material.dart';

class PrevisaoDia {
  final String dia;
  final IconData icone;
  final String min;
  final String max;

  PrevisaoDia({
    required this.dia,
    required this.icone,
    required this.min,
    required this.max,
  });
}

class Clima {
  final String cidade;
  final String temperatura;
  final String sensacao;
  final String min;
  final String max;
  final String umidade;
  final String vento;
  final String chuva;
  final IconData icone;
  final String imagemUrl;
  final List<PrevisaoDia> semana;

  Clima({
    required this.cidade,
    required this.temperatura,
    required this.sensacao,
    required this.min,
    required this.max,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.icone,
    required this.imagemUrl,
    required this.semana,
  });
}