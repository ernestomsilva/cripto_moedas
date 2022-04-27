import 'package:flutter/material.dart';
import 'package:cripto_moedas/repositories/moeda_repository.dart';

class MoedasPage extends StatelessWidget {
  MoedasPage({Key? key}) : super(key: key);
  final tabela = MoedaRepository.tabela;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Cripto Moedas Aula 20-4-2022',
        textAlign: TextAlign.center,
      )),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            leading: Image.asset(tabela[moeda].icone),
            title: Text(tabela[moeda].nome),
            trailing: Text(tabela[moeda].preco.toString()),
          );
        },
        padding: const EdgeInsets.all(9),
        separatorBuilder: (_, __) => const Divider(
          thickness: 2.0,
          color: Colors.blue,
        ),
        itemCount: tabela.length,
      ),
    );
  }
}
