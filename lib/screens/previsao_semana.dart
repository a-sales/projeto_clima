import 'package:flutter/material.dart';
import '../models/clima.dart';
import '../widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  final Clima clima;

  const PrevisaoSemanaScreen({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana - ${clima.cidade}')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade200,
                  child: Center(child: Text(clima.min)),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade200,
                  child: Center(child: Text(clima.temperatura)),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade200,
                  child: Center(child: Text(clima.max)),
                ),
              ),
            ],
          ),

          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          for (final dia in clima.semana)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Expanded(flex: 2, child: Text(dia.dia)),
                  Icon(dia.icone, size: 28),
                  Expanded(child: Text(dia.min)),
                  Expanded(child: Text(dia.max)),
                ],
              ),
            ),
        ],
      ),
    );
  }
}