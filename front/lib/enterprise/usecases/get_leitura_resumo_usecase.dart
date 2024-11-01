import 'package:my_water_app/enterprise/entities/leitura_resumo_entity.dart';

abstract interface class GetLeituraResumoUseCase {
  Future<List<LeiturasResumoEntity>> exec();
}
