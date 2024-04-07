import 'package:flutter/material.dart';

class Product{
  final String itemName;
  final String  description;
  final String  image;
  final double  price;
  final List<Color>  colors;
  final String  category;
  final double rate;

  Product({
    required this.itemName,
    required this.category,
    required this.colors,
    required this.description,
    required this.image,
    required this.price,
    required this.rate,
  });

}

final List<Product> products = [
  Product(
    itemName: 'V Collar T Shirt', 
    category: 'Tshirt', 
    colors: [
      Colors.red,
      Colors.blue,
      Colors.orange,
      Colors.green,
     
    ], 
    description: 't shirt is very unique', 
    image: 'assets/categories/tshirt.png', 
    price: 1200, 
    rate: 4.9,
    ),

    Product(
    itemName: 'Cap', 
    category: 'cap', 
    colors: [
      Colors.orange,
      Colors.white,
    ], 
    description: 'cap is very unique', 
    image: 'assets/categories/cap.png', 
    price: 100, 
    rate: 4.9,
    ),

    Product(
    itemName: 'Black trouser', 
    category: 'Trouser', 
    colors: [
      Colors.pink,
      Colors.purple,
    ], 
    description: 'trouser is very unique', 
    image: 'assets/categories/trouser.png', 
    price: 1100, 
    rate: 4.9,
    ),

    Product(
    itemName: 'Nike Shoes', 
    category: 'Shoes', 
    colors: [
      Colors.black,
      Colors.red,
    ], 
    description: 'shoes is very unique', 
    image: 'assets/categories/shoe.png', 
    price: 2500, 
    rate: 4.5,
    ),

    Product(
    itemName: 'Slim Short', 
    category: 'Short', 
    colors: [
      Colors.blueAccent,
      Colors.green,
    ], 
    description: 'short is very unique', 
    image: 'assets/categories/short.png', 
    price: 1200, 
    rate: 4.0,
    ),
];