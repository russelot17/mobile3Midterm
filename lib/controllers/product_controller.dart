import 'package:get/state_manager.dart';
import 'package:shopx/models/product.dart';
import 'package:shopx/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    productList.value = await RemoteServices.fetchProducts();
    isLoading.value = false;
  }
}
