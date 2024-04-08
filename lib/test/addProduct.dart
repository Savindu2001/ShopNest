// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:shopnest/model/productModel.dart';

// // Define a function to add product data to Firestore
// Future<void> addProduct(Product product) async {
//   try {
//     // Get a reference to the Firestore collection
//     CollectionReference productsCollection = FirebaseFirestore.instance.collection('products');

//     // Add the product data to Firestore
//     await productsCollection.add({
//       'itemName': product.itemName,
//       'description': product.description,
//       'image': product.image,
//       'price': product.price,
//       'colors': product.colors.map((color) => color.value).toList(),
//       'category': product.category,
//       'reviewRate': product.reviewRate,
//     });
//   } catch (e) {
//     // Handle any errors that occur during the process
//     print('Error adding product: $e');
//     throw e; // You can choose to throw the error or handle it in your UI
//   }
// }

// // Example usage:
// // Create a new Product object
// Product newProduct = Product(
//   itemID: '1', 
//   itemName: 'Example Product',
//   description: 'This is an example product description.',
//   image: 'example_image.jpg',
//   price: 19.99,
//   colors: [Colors.red, Colors.blue],
//   category: 'example_category',
//   reviewRate: 4.5,
// );

// // Call the function to add the product to Firestore
// addProductnew(newProduct) {
//   print('Product Added!');
// }


