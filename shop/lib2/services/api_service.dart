import 'package:get/get.dart';
import '../models/product.dart';

class ApiService extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://fakestoreapi.com';
    httpClient.timeout = const Duration(seconds: 30);
    super.onInit();
  }

  // Get all products
  Future<List<Product>> getProducts() async {
    try {
      final response = await get('/products');
      
      if (response.statusCode == 200) {
        final List<dynamic> data = response.body;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // Get single product by ID
  Future<Product> getProduct(int id) async {
    try {
      final response = await get('/products/$id');
      
      if (response.statusCode == 200) {
        return Product.fromJson(response.body);
      } else {
        throw Exception('Failed to load product');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  // Get products by category
  Future<List<Product>> getProductsByCategory(String category) async {
    try {
      final response = await get('/products/category/$category');
      
      if (response.statusCode == 200) {
        final List<dynamic> data = response.body;
        return data.map((json) => Product.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
