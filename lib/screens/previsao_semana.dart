import 'package:flutter/material.dart';
import 'package:flutter_projeto_clima/widgets/titulo_secao.dart';

// import 'package:flutter_projeto_clima/widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // a) Faixa de temperatura.
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade200,
                  child: Center(child: Text('18°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade200,
                  child: Center(child: Text('26°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade200,
                  child: Center(child: Text('31°C')),
                ),
              ),
            ],
          ),
          Divider(),
          // b) Resumo do Dia
          TituloSecao(titulo: 'Resumo do Dia'),
          Container(
            height: 200,
            color: Colors.grey.shade300,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.yellow.shade200,
                    child: Center(child: Text('Manhã 20°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde 29°C')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          // c) Próximos dias
          TituloSecao(titulo: 'Próximos dias'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Sexta-feira')),
                Icon(Icons.wb_sunny, size: 28, color: Colors.amber),
                Expanded(child: Text('16°C')),
                Expanded(child: Text('20°C')),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Sabado')),
                Icon(Icons.wb_sunny, size: 28, color: Colors.amber),
                Expanded(child: Text('14°C')),
                Expanded(child: Text('19°C')),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Domingo')),
                Icon(Icons.wb_sunny, size: 28, color: Colors.amber),
                Expanded(child: Text('30°C')),
                Expanded(child: Text('34°C')),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Segunda')),
                Icon(Icons.cloud, size: 28, color: Colors.grey),
                Expanded(child: Text('19°C')),
                Expanded(child: Text('28°C')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Terça')),
                Icon(Icons.umbrella, size: 28, color: Colors.indigo),
                Expanded(child: Text('18°C')),
                Expanded(child: Text('26°C')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
