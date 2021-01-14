import 'package:loja_virtual/models/Product.dart';
import 'package:loja_virtual/models/item_size.dart';

class CartProduct {

  CartProduct.fromProduct(this.product){
    productID = product.id;
    quantity = 1;
    size = product.selectedSize.name;
  }

  String productID;
  int quantity;
  String size;

  Product product;

  ItemSize get itemSize {
    if(product == null) return null;
    return product.findSize(size);
  }

  num get unitPrice {
    if(product == null) return 0;
    return itemSize?.price ?? 0;
  }
}