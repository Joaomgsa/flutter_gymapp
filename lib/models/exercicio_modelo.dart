class ExercicioModelo{
    String id;
    String name;
    String treino;
    String comoFazer;

    String? urlImage;

    ExercicioModelo({
          required this.id,
          required this.name,
          required this.treino,
          required this.comoFazer,
        });

    ExercicioModelo.fromMap(Map<String, dynamic> map)
        : id = map["id"],
          name = map["name"],
          treino = map["treino"],
          comoFazer = map["comoFazer"],
          urlImage = map["urlImage"];

    Map<String, dynamic> toMap() {
      return {
        "id": id,
        "nome" : name,
        "treino": treino,
        "comoFazer": comoFazer,
        "urlImagem": urlImage,
      };
    }
}