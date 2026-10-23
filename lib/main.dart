import 'package:flutter/material.dart';
import 'package:flutter_projeto_clima/widgets/titulo_secao.dart';
import 'package:flutter_projeto_clima/screens/clima_atual.dart';
import 'package:flutter_projeto_clima/screens/previsao_semana.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeatherApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: Column(
        // TituloSecao(titulo: 'ClimaApp'),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => ClimaAtualScreen())),
              );
            },
            child: Text('Clima Atual'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrevisaoSemanaScreen()),
              );
            },
            child: Text('Previsão da Semana'),
          ),
        ],
      ),
    );
  }
}
