import 'package:flutter/material.dart';

class CardCidadeDestaque extends StatelessWidget {
  final String nome;
  final String temperatura;
  final String min;
  final String max;
  final String umidade;
  final String vento;
  final String chuva;
  final IconData icone;
  final VoidCallback onTap;

  const CardCidadeDestaque({
    super.key,
    required this.nome,
    required this.temperatura,
    required this.min,
    required this.max,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.icone,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    nome,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('min $min   max $max'),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(icone, size: 48, color: Colors.orange),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      temperatura,
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Umidade $umidade'),
                  Text('Vento $vento'),
                  Text('Chuva $chuva'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardCidadeResumo extends StatelessWidget {
  final String nome;
  final String temperatura;
  final String min;
  final String max;
  final String umidade;
  final String vento;
  final String chuva;
  final VoidCallback onTap;

  const CardCidadeResumo({
    super.key,
    required this.nome,
    required this.temperatura,
    required this.min,
    required this.max,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nome,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('min $min   max $max', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      temperatura,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '$umidade · $vento · $chuva',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
