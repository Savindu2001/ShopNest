import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopnest/model/products.dart';
import 'package:shopnest/shop/storeWidget/homesearchbar.dart';
import 'package:shopnest/shop/storeWidget/productListCard.dart';

class ShopNestStore extends StatefulWidget {
  const ShopNestStore({super.key});

  @override
  State<ShopNestStore> createState() => _ShopNestStoreState();
}

class _ShopNestStoreState extends State<ShopNestStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeSearchBar(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              
              SizedBox(height: 20),
          
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20
                    ), 
                    itemCount: products.length,
                    itemBuilder: (context,index){
                      final productItem = products[index];
                    return ProductListCard(product: productItem);
                  },
                  ),
            ],
          ),
        ),
         ),
    );
  }
}