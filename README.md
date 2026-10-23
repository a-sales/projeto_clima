# flutter_projeto_clima

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# projeto_clima

# Questão exercicio 2:

# Qual a diferença entre Expanded e Flexible?

Os dois widgets servem para dividir o espaço disponível dentro de uma Row ou Column. A diferença está em como o filho ocupa esse espaço.

Expanded - obriga o filho a ocupar todo o espaço. O filho é "esticado" para preencher.
Flexible -  deixa o filho ocupar só o espaço de que precisa, até o limite que lhe cabe. Se o filho for pequeno, ele não é esticado.

# O que acontece quando elementos têm flex diferentes?

O Flutter primeiro reserva o espaço dos widgets que não têm flex. Depois divide o espaço restante entre os que têm flex, de forma proporcional aos valores. Quanto maior o flex, maior a fatia.
