import 'package:marketplace/features/home/models/product.dart';
import 'package:marketplace/shared/mock/mock_products.dart';

class ProductService {
  List<Product> getProducts() {
    return MockProducts.productCollection;
  }

  Product getProductById(int id) {
    return MockProducts.productCollection[id];
  }
}
