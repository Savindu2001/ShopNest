// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:cloud_firestore/cloud_firestore.dart';

// class Product {
//   final String itemName;
//   final String description;
//   final String image;
//   final double price;
//   final List<Color> colors;
//   final String category;
//   final double rate;

//   Product({
//     required this.itemName,
//     required this.description,
//     required this.image,
//     required this.price,
//     required this.colors,
//     required this.category,
//     required this.rate,
//   });
// }

// class AddProductPage extends StatefulWidget {
//   @override
//   _AddProductPageState createState() => _AddProductPageState();
// }

// class _AddProductPageState extends State<AddProductPage> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   final TextEditingController _priceController = TextEditingController();
//   final TextEditingController _rateController = TextEditingController();
//   final List<Color> _selectedColors = [];

//   // Function to upload the selected image to Firebase Storage
//   Future<String?> _uploadImageToFirebaseStorage(File imageFile) async {
//     try {
//       // Create a reference to the image file in Firebase Storage
//       firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
//           .ref()
//           .child('product_images')
//           .child(imageFile.path.split('/').last);

//       // Upload the file to Firebase Storage
//       await ref.putFile(imageFile);

//       // Return the URL of the uploaded image
//       return await ref.getDownloadURL();
//     } catch (e) {
//       print('Error uploading image to Firebase Storage: $e');
//       return null;
//     }
//   }

//   // Function to add product to Firestore
//   Future<void> _addProductToFirestore(Product product) async {
//     try {
//       // Get reference to the Firestore collection
//       CollectionReference productsRef =
//           FirebaseFirestore.instance.collection('products');

//       // Add product to Firestore
//       await productsRef.add({
//         'itemName': product.itemName,
//         'description': product.description,
//         'image': product.image,
//         'price': product.price,
//         'colors': product.colors.map((color) => color.value).toList(),
//         'category': product.category,
//         'rate': product.rate,
//       });

//       // Show success message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Product added successfully')),
//       );
//     } catch (e) {
//       print('Error adding product to Firestore: $e');
//       // Show error message
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to add product. Please try again.')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Product'),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _nameController,
//               decoration: InputDecoration(labelText: 'Product Name'),
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _descriptionController,
//               decoration: InputDecoration(labelText: 'Description'),
//               maxLines: 3,
//             ),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _priceController,
//               decoration: InputDecoration(labelText: 'Price'),
//               keyboardType: TextInputType.number,
//             ),
//             SizedBox(height: 16.0),
//             SizedBox(height: 16.0),
//             TextField(
//               controller: _rateController,
//               decoration: InputDecoration(labelText: 'Rate'),
//               keyboardType: TextInputType.number,
//             ),

//             SizedBox(height: 20,),

//             // Color selection
//             Text('Select Colors:'),
//             Wrap(
//               children: List.generate(_availableColors.length, (index) {
//                 Color color = _availableColors[index];
//                 return GestureDetector(
//                   onTap: () {
//                     setState(() {
//                       if (_selectedColors.contains(color)) {
//                         _selectedColors.remove(color);
//                       } else {
//                         _selectedColors.add(color);
//                       }
//                     });
//                   },
//                   child: Container(
//                     margin: EdgeInsets.only(right: 8.0),
//                     width: 40,
//                     height: 40,
//                     decoration: BoxDecoration(
//                       color: color,
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: _selectedColors.contains(color)
//                             ? Colors.white
//                             : Colors.transparent,
//                         width: 2.0,
//                       ),
//                     ),
//                   ),
//                 );
//               }),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () async {
//                 // Extract product details
//                 String itemName = _nameController.text.trim();
//                 String description = _descriptionController.text.trim();
//                 double price = double.parse(_priceController.text.trim());

//                 // Upload image to Firebase Storage if needed
//                 String imageUrl = ''; // Placeholder for image URL
//                 // if (_imageFile != null) {
//                 //   imageUrl = await _uploadImageToFirebaseStorage(_imageFile);
//                 // }

//                 // Create product object with selected colors
//                 Product newProduct = Product(
//                   itemName: itemName,
//                   description: description,
//                   image: imageUrl,
//                   price: price,
//                   colors: _selectedColors,
//                   category: 'Other', // Example category
//                   rate: 0.0, // Example rate
//                 );

//                 // Add product to Firestore
//                 await _addProductToFirestore(newProduct);
//               },
//               child: Text('Add Product'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Example list of available colors
// List<Color> _availableColors = [
//   Colors.red,
//   Colors.blue,
//   Colors.green,
//   Colors.yellow,
//   Colors.orange,
//   Colors.purple,
// ];
