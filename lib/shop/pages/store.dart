import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopnest/model/productModel.dart';
import 'package:shopnest/shop/storeWidget/homesearchbar.dart';
import 'package:shopnest/shop/storeWidget/productStoreCard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shopnest/widgets/loader.dart';

class ShopNestStore extends StatefulWidget {
  const ShopNestStore({Key? key});

  @override
  State<ShopNestStore> createState() => _ShopNestStoreState();
}

class _ShopNestStoreState extends State<ShopNestStore> {
  late Future<List<Product>> _productsFuture;

  @override
  void initState() {
    super.initState();
    _productsFuture = fetchProducts();
  }

  

  Future<List<Product>> fetchProducts() async {
  try {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('products').get();
    List<Product> products = querySnapshot.docs.map((doc) {
      Map<String, dynamic>? data = doc.data()  as Map<String, dynamic>?;
      if (data == null) {
        throw Exception('Document data is null');
      }

      
      String itemID = doc.id;
      String itemName = data['itemName'].toString();
      String description = data['description'].toString();
      String image = data['image'].toString();
      double price = (data['price'] ?? 0).toDouble();
      String colors = data['color'];
      String category = data['category'] ?? ''; 
      double reviewRate = (data['reviewRate'] ?? 0).toDouble();

      return Product(
        itemID: itemID,
        itemName: itemName,
        description: description,
        image: image,
        price: price,
        colors: colors,
        category: category,
        reviewRate: reviewRate,
      );
    }).toList();
    return products;
  } catch (e) {
    print('Error fetching products: $e');
    return []; 
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeSearchBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FutureBuilder<List<Product>>(
            future: _productsFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return ShopNestLoader();
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                List<Product> product = snapshot.data ?? [];
                return GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: product.length,
                  itemBuilder: (context, index) {
                    final productItem = product[index];
                    return Padding(
                      padding: const EdgeInsets.only(left: 5,right: 2),
                      child: ProductListCard(product: productItem,),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
