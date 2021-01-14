import 'package:loja_virtual/models/Product.dart';
import 'package:loja_virtual/models/cart_product.dart';

class CartManager {
  List<CartProduct> items = [];

  void addToCart(Product product){
    items.add(CartProduct.fromProduct(product));
  }
}