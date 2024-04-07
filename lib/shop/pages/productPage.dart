import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopnest/model/products.dart';
import 'package:shopnest/shop/storeWidget/addToCart.dart';
import 'package:shopnest/shop/storeWidget/imageSlider.dart';
import 'package:shopnest/shop/storeWidget/productDescription.dart';
import 'package:shopnest/shop/storeWidget/productInfo.dart';
import 'package:shopnest/shop/storeWidget/productPageTop.dart';

class ProductPage extends StatefulWidget {
  final Product product;
  const ProductPage({super.key, required this.product});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentImage = 0;
  int currentColor = 0;
  int currentNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //add to card float button
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10),
        child: AddToCardFloat(currentNumber: currentNumber, onAdd: (){
          setState(() {
            currentNumber++;
          });
        }, 
        onRemove: (){
          setState(() {
            currentNumber--;
          });
        },),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


      // backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Top Bar
              ProductPageTop(),
        
              ImageSlider(
                onChange: (index)=> setState(() {
                  currentImage=index;
                }), 
                currentImage: currentImage, 
                image: widget.product.image,
                ),
        
              SizedBox(height: 10,),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4, 
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 300,),
                    width: 8,
                    height: currentImage == index?15:8,
                    margin: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentImage==index? Colors.black : Colors.white ,
                      border: Border.all(color: Colors.black)
                    ), 
                    ),
                  ),
                ),
        
        
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  height: 520,
                  decoration:const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)
                    ),
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    //product name,price,rate
                    ProductInfo(product: widget.product),
        
                    //product colors
                    SizedBox(height: 20,),
                    Text('Colors:',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight:FontWeight.bold,
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      
                      children: List.generate(
                        
                        widget.product.colors.length, 
                        (index) => GestureDetector(
                          onTap: (){
                            setState(() {
                              currentColor =index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            child: Container(
                              width: 35,
                              height: 35,
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currentColor==index? Colors.white : widget.product.colors[index],
                                border: currentColor == index? Border.all(
                                  color: widget.product.colors[index],
                                ) : Border.all(),
                              ),
                              child: Container(
                                width: 25,
                                height: 25,
                                margin: const EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: widget.product.colors[index],
                              ),
                              ),
                            ),
                          ),
                        )
                        ),
                    ),
        
        
                    SizedBox(height: 20),
                    //product description

                    ProductDescription(product: widget.product),
        
                   
        
                  ],
                ),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
