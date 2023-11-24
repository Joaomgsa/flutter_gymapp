import 'package:flutter/material.dart';

class ExercicioTela extends StatelessWidget {
  const ExercicioTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Puxada Alta Pronada - Treino A')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Exercicio adicionado!");
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Enviar Foto')),
            const Text("Como Fazer?", style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
            const Text("Puxe a barra em direção ao peito, mantendo os cotovelos próximos ao corpo e contraindo os músculos das costas."),
            const Divider(),
            const Text("Como estou me sentindo?, style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
            const Text("Senti uma boa ativação hoje.")
          ],
        ),
      )
    );
  }
}

