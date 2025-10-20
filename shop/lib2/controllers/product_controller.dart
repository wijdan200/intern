import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/product.dart';
import '../services/api_service.dart';

class ProductController extends GetxController {
  final ApiService _apiService = Get.find<ApiService>();
  
  final RxList<Product> products = <Product>[].obs;
  final RxBool isLoading = false.obs;
  final RxString error = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      isLoading.value = true;
      error.value = '';
      
      final fetchedProducts = await _apiService.getProducts(); //geeet the products
      products.value = fetchedProducts; //رح يخزنها بهاد الvariable
    } catch (e) {
      error.value = e.toString();
      Get.snackbar(
        'Error',
        'Failed to load products: $e',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refreshProducts() async {
    await loadProducts();
  }

  void goToProductDetails(Product product) {
    Get.toNamed('/product-details', arguments: product);
  }
}
