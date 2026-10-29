import 'package:flutter/material.dart';

import 'screens/detalhes_avancados.dart';
import 'widgets/card_cidade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClimaApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void abrirDetalhes() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetalhesAvancadosScreen()),
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CardCidadeDestaque(
            nome: 'São Paulo',
            temperatura: '26°C',
            min: '18°C',
            max: '31°C',
            umidade: '65%',
            vento: '12 km/h',
            chuva: '30%',
            icone: Icons.wb_sunny,
            onTap: abrirDetalhes,
          ),
          SizedBox(height: 16),
          Center(child: Text('Toque na cidade para ver mais')),
          SizedBox(height: 8),
          CardCidadeResumo(
            nome: 'Rio de Janeiro',
            temperatura: '32°C',
            min: '24°C',
            max: '35°C',
            umidade: '70%',
            vento: '10 km/h',
            chuva: '20%',
            onTap: abrirDetalhes,
          ),
          CardCidadeResumo(
            nome: 'Curitiba',
            temperatura: '18°C',
            min: '12°C',
            max: '22°C',
            umidade: '80%',
            vento: '15 km/h',
            chuva: '60%',
            onTap: abrirDetalhes,
          ),
          CardCidadeResumo(
            nome: 'Salvador',
            temperatura: '29°C',
            min: '24°C',
            max: '31°C',
            umidade: '75%',
            vento: '14 km/h',
            chuva: '40%',
            onTap: abrirDetalhes,
          ),
        ],
      ),
    );
  }
}
