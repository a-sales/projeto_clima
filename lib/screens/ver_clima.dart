import 'package:flutter/material.dart';
import 'package:flutter_projeto_clima/models/clima.dart';
import 'package:flutter_projeto_clima/widgets/titulo_secao.dart';
import 'package:flutter_projeto_clima/screens/previsao_semana.dart';

class VerClimaScreen extends StatelessWidget {
  final Clima clima;

  const VerClimaScreen({super.key, required this.clima});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(clima.cidade)),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Condição do tempo'),
          Stack(
            children: [
              Image.network(
                clima.imagemUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 12,
                bottom: 12,
                child: Text(
                  clima.temperatura,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Icon(clima.icone, color: Colors.white, size: 32),
              ),
            ],
          ),

          Divider(),
          TituloSecao(titulo: 'Previsão semana'),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrevisaoSemanaScreen(clima: clima),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    for (final dia in clima.semana.take(3))
                      Expanded(
                        child: Column(
                          children: [
                            Text(dia.min),
                            Icon(dia.icone, size: 28),
                            Text(dia.max),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
