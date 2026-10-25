import 'package:flutter/material.dart';
import 'package:flutter_projeto_clima/widgets/titulo_secao.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes avançados')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // a) Alertas
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
          // b) Indicadores
          TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny, color: Colors.amber, size: 32),
                    Text(
                      '6',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Índice UV'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.speed, color: Colors.blue, size: 32),
                    Text(
                      '1012 hPa',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Pressão'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.visibility, color: Colors.grey, size: 32),
                    Text(
                      '10 km',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Visibilidade'),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_twilight, color: Colors.deepOrange, size: 32),
                    Text(
                      '05:42',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Nascer do sol'),
                  ],
                ),
              ),
            ],
          ),

          Divider(),
          // c) Condição do tempo
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
          // d) Tags
          TituloSecao(titulo: 'Tags'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(
                avatar: Icon(Icons.water_drop, size: 18),
                label: Text('Chuva forte'),
              ),
              Chip(
                avatar: Icon(Icons.wb_sunny, size: 18),
                label: Text('UV alto'),
              ),
              Chip(label: Text('Vento moderado')),
              Chip(label: Text('Umidade alta')),
              Chip(label: Text('Frente fria')),
            ],
          ),
        ],
      ),
    );
  }
}
