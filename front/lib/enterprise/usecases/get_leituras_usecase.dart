import 'package:my_water_app/enterprise/entities/leituras_entity.dart';

abstract interface class GetLeiturasUseCase {
  Future<LeiturasEntity> exec({DateTime? endDate, DateTime? startDate});
}
