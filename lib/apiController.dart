import 'package:get/get.dart';
import 'httpHelper.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  RxList productList = RxList();
  @override
  void onInit() {
    fetchProduct();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var product = await httpHelper.fetchDetails();
      if (product != null) {
        productList.value = product;
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
