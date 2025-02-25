import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart with ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: ' Nike Air',
        price: '237',
        imagePath: 'lib/images/nike air.png',
        description:
            'The forward thinking design of his latest signature shoe'),
    Shoe(
        name: 'Air Jordan',
        price: '270',
        imagePath: 'lib/images/air jordan.png',
        description: 'what we really think when we imagine a magic shoe'),
    Shoe(
        name: 'Nike 3',
        price: '240',
        imagePath: 'lib/images/nike 3.webp',
        description:
            'A secure midfoot strap is suites for scoring binges and defensive')
  ];

//list of items in the user cart

  List<Shoe> userCart = [];

  //get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
