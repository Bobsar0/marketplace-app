import 'package:marketplace/shared/mock/mock_products.dart';
import 'package:marketplace/shared/models/product.dart';

class ProductService {
  List<Product> getProducts() {
    return MockProducts.productCollection;
  }

  Product getProductById(int id) {
    return MockProducts.productCollection[id];
  }
}
