class LeituraEntity {
  final String id;
  final int contador;
  final String? photo;
  final int dataInMilisegundos;

  LeituraEntity({
    required this.contador,
    required this.dataInMilisegundos,
    required this.photo,
    required this.id,
  });

  double calcularValorMc({
    required LeituraEntity? leituraAnterior,
  }) {
    if (leituraAnterior == null) {
      return 0.0;
    }

    final int diferencaMc = contador - leituraAnterior.contador;
    return diferencaMc.toDouble();
  }
}
