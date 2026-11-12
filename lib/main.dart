import 'package:flutter/material.dart';
import 'package:flutter_projeto_clima/screens/detalhes_avancados.dart';
import 'package:flutter_projeto_clima/models/clima.dart';
import 'package:flutter_projeto_clima/widgets/card_cidade.dart';

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
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _cliques = 0;

  final List<Clima> cidades = [
    Clima(
      cidade: 'São Paulo',
      temperatura: '26°C',
      sensacao: '28°C',
      min: '18°C',
      max: '31°C',
      umidade: '65%',
      vento: '12 km/h',
      chuva: '30%',
      icone: Icons.wb_sunny,
      imagemUrl: 'https://picsum.photos/id/10/400/300/',
      semana: [
        PrevisaoDia(
          dia: 'Sexta',
          icone: Icons.wb_sunny,
          min: '18°C',
          max: '27°C',
        ),
        PrevisaoDia(
          dia: 'Sábado',
          icone: Icons.cloud,
          min: '17°C',
          max: '24°C',
        ),
        PrevisaoDia(
          dia: 'Domingo',
          icone: Icons.umbrella,
          min: '16°C',
          max: '22°C',
        ),
        PrevisaoDia(
          dia: 'Segunda',
          icone: Icons.wb_sunny,
          min: '19°C',
          max: '28°C',
        ),
        PrevisaoDia(dia: 'Terça', icone: Icons.cloud, min: '18°C', max: '26°C'),
      ],
    ),
    Clima(
      cidade: 'Rio de Janeiro',
      temperatura: '32°C',
      sensacao: '36°C',
      min: '24°C',
      max: '35°C',
      umidade: '70%',
      vento: '10 km/h',
      chuva: '20%',
      icone: Icons.wb_sunny,
      imagemUrl: 'https://picsum.photos/id/1015/400/300/',
      semana: [
        PrevisaoDia(
          dia: 'Sexta',
          icone: Icons.wb_sunny,
          min: '24°C',
          max: '35°C',
        ),
        PrevisaoDia(
          dia: 'Sábado',
          icone: Icons.wb_sunny,
          min: '25°C',
          max: '36°C',
        ),
        PrevisaoDia(
          dia: 'Domingo',
          icone: Icons.cloud,
          min: '23°C',
          max: '33°C',
        ),
        PrevisaoDia(
          dia: 'Segunda',
          icone: Icons.umbrella,
          min: '22°C',
          max: '30°C',
        ),
        PrevisaoDia(dia: 'Terça', icone: Icons.cloud, min: '23°C', max: '31°C'),
      ],
    ),
    Clima(
      cidade: 'Curitiba',
      temperatura: '18°C',
      sensacao: '16°C',
      min: '12°C',
      max: '22°C',
      umidade: '80%',
      vento: '15 km/h',
      chuva: '60%',
      icone: Icons.umbrella,
      imagemUrl: 'https://picsum.photos/id/1018/400/300/',
      semana: [
        PrevisaoDia(
          dia: 'Sexta',
          icone: Icons.umbrella,
          min: '12°C',
          max: '20°C',
        ),
        PrevisaoDia(
          dia: 'Sábado',
          icone: Icons.cloud,
          min: '11°C',
          max: '19°C',
        ),
        PrevisaoDia(
          dia: 'Domingo',
          icone: Icons.cloud,
          min: '10°C',
          max: '18°C',
        ),
        PrevisaoDia(
          dia: 'Segunda',
          icone: Icons.wb_sunny,
          min: '11°C',
          max: '21°C',
        ),
        PrevisaoDia(
          dia: 'Terça',
          icone: Icons.umbrella,
          min: '13°C',
          max: '20°C',
        ),
      ],
    ),
    Clima(
      cidade: 'Salvador',
      temperatura: '29°C',
      sensacao: '32°C',
      min: '24°C',
      max: '31°C',
      umidade: '75%',
      vento: '14 km/h',
      chuva: '40%',
      icone: Icons.cloud,
      imagemUrl: 'https://picsum.photos/id/1039/400/300/',
      semana: [
        PrevisaoDia(dia: 'Sexta', icone: Icons.cloud, min: '24°C', max: '31°C'),
        PrevisaoDia(
          dia: 'Sábado',
          icone: Icons.wb_sunny,
          min: '25°C',
          max: '32°C',
        ),
        PrevisaoDia(
          dia: 'Domingo',
          icone: Icons.wb_sunny,
          min: '25°C',
          max: '32°C',
        ),
        PrevisaoDia(
          dia: 'Segunda',
          icone: Icons.umbrella,
          min: '24°C',
          max: '29°C',
        ),
        PrevisaoDia(dia: 'Terça', icone: Icons.cloud, min: '24°C', max: '30°C'),
      ],
    ),
  ];

  void _registrarClique() {
    setState(() {
      _cliques++;
    });
  }

  @override
  Widget build(BuildContext context) {
    void abrirDetalhes(Clima clima) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetalhesAvancadosScreen(clima: clima),
        ),
      );
    }

    final destaque = cidades.first;

    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CardCidadeDestaque(
            nome: destaque.cidade,
            temperatura: destaque.temperatura,
            min: destaque.min,
            max: destaque.max,
            umidade: destaque.umidade,
            vento: destaque.vento,
            chuva: destaque.chuva,
            icone: destaque.icone,
            onTap: () => abrirDetalhes(destaque),
          ),
          SizedBox(height: 16),
          Center(child: Text('Toque na cidade para ver mais')),
          SizedBox(height: 8),
          for (final clima in cidades.skip(1))
            CardCidadeResumo(
              nome: clima.cidade,
              temperatura: clima.temperatura,
              min: clima.min,
              max: clima.max,
              umidade: clima.umidade,
              vento: clima.vento,
              chuva: clima.chuva,
              onTap: () => abrirDetalhes(clima),
            ),
          CardContador(cliques: _cliques, onTap: _registrarClique),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class CatalogoItem {
  final String titulo;
  final IconData icone;
  final String descricao;
  final Widget destino;

  CatalogoItem({
    required this.titulo,
    required this.icone,
    required this.descricao,
    required this.destino,
  });
}
