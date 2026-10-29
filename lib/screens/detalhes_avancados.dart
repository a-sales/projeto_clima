import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';
import 'previsao_semana.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  Widget _diaPrevisao(String min, IconData icone, Color cor, String max) {
    return Expanded(
      child: Column(
        children: [
          Text(min),
          Icon(icone, color: cor, size: 28),
          Text(max),
        ],
      ),
    );
  }

  Widget _indicador(IconData icone, Color cor, String valor, String nome) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icone, color: cor, size: 32),
          Text(
            valor,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(nome),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes avançados')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Condição do tempo
          TituloSecao(titulo: 'Condição do tempo'),
          Stack(
            children: [
              Image.network(
                'https://picsum.photos/id/10/400/300/',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 12,
                bottom: 12,
                child: Text(
                  '26°C',
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
                child: Icon(Icons.wb_sunny, color: Colors.white, size: 32),
              ),
            ],
          ),

          Divider(),
          // Alertas
          TituloSecao(titulo: 'Alertas'),
          Card(
            child: ListTile(
              leading: Icon(Icons.warning, color: Colors.orange),
              title: Text('Chuva forte'),
              subtitle: Text('Previsto para hoje, a partir das 18h'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.bolt, color: Colors.red),
              title: Text('Tempestade com raios'),
              subtitle: Text('Previsto para amanhã, a partir das 14h'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),

          Divider(),
          // Previsão semana (clicável)
          TituloSecao(titulo: 'Previsão semana'),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrevisaoSemanaScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    _diaPrevisao('18°C', Icons.wb_sunny, Colors.amber, '27°C'),
                    _diaPrevisao('17°C', Icons.cloud, Colors.grey, '24°C'),
                    _diaPrevisao('16°C', Icons.umbrella, Colors.indigo, '22°C'),
                  ],
                ),
              ),
            ),
          ),

          Divider(),
          // Indicadores
          TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              _indicador(Icons.wb_sunny, Colors.amber, '6', 'Índice UV'),
              _indicador(Icons.speed, Colors.blue, '1012 hPa', 'Pressão'),
              _indicador(
                Icons.visibility,
                Colors.grey,
                '10 km',
                'Visibilidade',
              ),
              _indicador(
                Icons.wb_twilight,
                Colors.deepOrange,
                '05:42',
                'Nascer do sol',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
