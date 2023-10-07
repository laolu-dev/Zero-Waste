import 'package:zero_waste/core/service/dio_service.dart';

class HomeRepository {
  final DioService service = DioService();

  Future getFarmersByType(String farmerType) async {
    await service.dio.get(
      "farmers/type",
      queryParameters: {"farmerType": farmerType},
      // options: Options(
      //   headers: {
      //     "authorization" : "Bearer"
      //   }
      // )
    );
  }
}
