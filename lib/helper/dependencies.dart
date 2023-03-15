import 'package:e_commerce_app/controller/popular_product_controller.dart';
import 'package:e_commerce_app/data/api/api_client.dart';
import 'package:e_commerce_app/data/repositries/popular_product_repo.dart';
import 'package:e_commerce_app/utils/app_constants.dart';
import 'package:get/get.dart';

import '../controller/recommended_product_controller.dart';
import '../data/repositries/recommended_product_repo.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //controllers
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
