import 'package:flutter/material.dart';
// import 'package:flutter_projeto_clima/widgets/item_detalhe.dart';
import 'package:flutter_projeto_clima/widgets/titulo_secao.dart';

class ClimaAtualScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WeatherApp')),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TituloSecao(titulo: 'Cidade atual'),
          Container(
            color: Colors.lightBlue.shade100,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'São Paulo',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Quinta-feira, 15 de outubro',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),

          Divider(),
          TituloSecao(titulo: 'Temperatura'),
          Center(
            child: Column(
              children: [
                Text(
                  '26°C',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(height: 8),
                Text('Sensação térmica: 28°C', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          Divider(),
          TituloSecao(titulo: 'Condição do tempo'),
          Image.network('https://picsum.photos/id/10/400/300/', height: 200),

          Divider(),
          TituloSecao(titulo: 'Detalhes'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.water_drop, color: Colors.blue, size: 32),
              Icon(Icons.air, color: Colors.grey, size: 32),
              Icon(Icons.umbrella, color: Colors.indigo, size: 32),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [Text('65%'), Text('12 Km/h'), Text('30%')],
            ),
          ),

          Divider(),
          TituloSecao(titulo: 'Atualização'),
          Center(
            child: ElevatedButton(onPressed: () {}, child: Text('Atualizar')
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 80,
            color: Colors.grey.shade200,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('Última atualização: 14:30'),
            ),
          ),
          
        ],
      ),
    );
  }
}
