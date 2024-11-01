import 'package:my_water_app/enterprise/entities/leitura_entity.dart';

class LeiturasEntity {
  final List<LeituraEntity> leituras;
  final int totalLeitura;
  LeiturasEntity({this.leituras = const [], this.totalLeitura = 0});

  ({int valorTotalMc, double valorTotal}) calcularFaturaTotal() {
    final valorTotalFatura = _calcularValorTotalFatura(totalLeitura);

    return (
      valorTotalMc: totalLeitura,
      valorTotal: valorTotalFatura,
    );
  }

  double _calcularValorTotalFatura(int somaMc) {
    double valor = 0.0;

    if (somaMc <= 3) {
      valor = somaMc * 0.987;
    } else if (somaMc <= 10) {
      valor = (3 * 0.987) + (somaMc - 3) * 0.5527;
    } else if (somaMc <= 22) {
      valor = (3 * 0.987) + (7 * 0.5527) + (somaMc - 10) * 0.8749;
    } else {
      valor = (3 * 0.987) +
          (7 * 0.5527) +
          (12 * 0.8749) +
          (somaMc - 22) * 0.94211;
    }

    return double.parse(valor.toStringAsFixed(2));
  }
}
