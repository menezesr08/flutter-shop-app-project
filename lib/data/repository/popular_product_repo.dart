import 'package:food_delivery/data/api/api_client.dart';
import 'package:food_delivery/utils/app_constants.dart';
import 'package:get/get.dart';

// when load data from internet using GetConnect, use GetxService as below
class PopularProductRepo extends GetxService {
  final ApiClient apiClient;

  PopularProductRepo({required this.apiClient});

  Future<Response> getPopularProductList() async {
   
    return await apiClient.getData(AppConstants.RECOMMENDED_PRODUCT_URI);
  }
}
