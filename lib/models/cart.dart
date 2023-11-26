import 'package:flutter/material.dart';
import 'package:prime_kicks/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/kick2.jpg',
        description: 'The forward hinking design of his signature shoe.'),
    Shoe(
        name: 'Nike Air',
        price: '110',
        imagePath: 'lib/images/kick3.jpg',
        description: 'Casual shoes from nike.'),
    Shoe(
        name: 'Air Max',
        price: '160',
        imagePath: 'lib/images/kick4.jpg',
        description: 'The forward hinking design of his sports shoe.'),
    Shoe(
        name: 'Air Jordan',
        price: '150',
        imagePath: 'lib/images/kick5.jpg',
        description: 'Classic sneakers'),
  ];

  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
