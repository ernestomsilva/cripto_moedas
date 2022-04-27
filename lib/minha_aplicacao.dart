import 'package:cripto_moedas/pages/moedas_page.dart';
import 'package:flutter/material.dart';


class MinhaAplicacao extends StatelessWidget {
  const MinhaAplicacao({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Critpo Modedas',
      theme: ThemeData(primarySwatch: Colors.indigo,
      ),
      //todo
    
    home: MoedasPage(),
    );
  }
}