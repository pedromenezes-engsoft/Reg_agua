import 'package:my_water_app/infra/repositories/casa_repositories/casa_model.dart';

abstract interface class CasaRepository {
  Future<ProprietarioResponseModel> getCasa(ProprietarioModel casaModel);
  Future<List<ProprietarioResponseModel>> getCasas();
}
