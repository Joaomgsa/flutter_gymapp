import 'package:flutter/material.dart';
import 'package:flutter_gymapp/models/exercicio_modelo.dart';

import '../models/sentimento_modelo.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModelo exercicioModelo = ExercicioModelo(
    id: "001",
    name: "Remada Baixa Supinada",
    treino: "Treino A",
    comoFazer: "Puxe a barra em direção ao peito, mantendo os cotovelos próximos ao corpo e contraindo os músculos das costas.",
  );

  final List<SentimentoModelo> listaSentimento = [
      SentimentoModelo(
          id: "SE001", sentindo: "Pouca Ativação Hoje", data: "2023-11-24",),
      SentimentoModelo(
          id: "SE002", sentindo: "Muita Ativação Hoje", data: "2023-11-23",),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(exercicioModelo.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,)),
            Text(exercicioModelo.treino),
          ],
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Exercicio adicionado!");
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(color: Colors.white,
                                  borderRadius: BorderRadius.circular(16.0)),
        child: ListView(
          children: [
            SizedBox(
                height: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(onPressed: (){}, child: const Text('Enviar Foto')),
                    ElevatedButton(onPressed: (){}, child: const Text('Tirar Foto'),
                    )],
                )),
            const SizedBox(height: 8.0),
            const Text("Como Fazer:", style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
            Text(exercicioModelo.comoFazer),
            const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(color: Colors.black),
            ),
            const Text("Como estou me sentindo:", style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
            const SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimento.length, (index) {
                SentimentoModelo sentimentoAgora = listaSentimento[index];
                return ListTile(
                  dense: true,
                  contentPadding: const EdgeInsets.all(0),
                  title: Text(sentimentoAgora.sentindo),
                  subtitle: Text(sentimentoAgora.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red,),
                    onPressed: () {
                      print("Deletar ${sentimentoAgora.sentindo}");
                    },
                  ),
                );
              }),
            )
          ],
        ),
      )
    );
  }
}

