import 'package:my_water_app/enterprise/entities/casa_entity.dart';

abstract interface class GetCasaUseCase {
  Future<CasaEntity> exec({
    required String nomeProprietario,
  });
}
