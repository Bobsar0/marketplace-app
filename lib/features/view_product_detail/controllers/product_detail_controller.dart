import 'package:marketplace/shared/models/product.dart';

import '../../../shared/utils/locator.dart';
import '../../home/services/product_service.dart';

class ProductDetailController {
  final ProductService _productService = Locator.getService();

  Product getProduct(int id) {
    return _productService.getProductById(id);
  }
}
