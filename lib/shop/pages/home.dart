import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopnest/shop/storeWidget/categories.dart';
import 'package:shopnest/shop/storeWidget/homeSlider.dart';
import 'package:shopnest/shop/storeWidget/homeappbar.dart';
import 'package:shopnest/shop/storeWidget/homesearchbar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentSlider = 0;


    final user = FirebaseAuth.instance.currentUser;

    Future signOut()async{
      await FirebaseAuth.instance.signOut(
        
      );
    }
  int currentTab =0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      

      // backgroundColor: Colors.grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                //Home App bar 
                const HomeAppBar(),
                const SizedBox(height: 20),
                //Home searchbar
                HomeSearchBar(),
                const SizedBox(height: 20),
                
                //Home banner
                HomeSlider(
                  onChange: (value){
                    setState(() {
                      currentSlider = value;
                    });
                  }, 
                  currentSlider: currentSlider,
                  imagePaths: [
                  'assets/slider/slide.jpg',
                  'assets/slider/slide2.jpg',
                  'assets/slider/slide1.jpg',
                  //add two more banners
                  ]
                  ),
          
                //Home Category List
                const SizedBox(height: 20),
                ShopNestCategories(),
          
                //Best Selling Items
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Special For You',
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                      fontSize:24,
                    ),
                    ),
                          
                    TextButton(
                      onPressed: (){}, 
                      child: Text('See All',
                      style: GoogleFonts.poppins(
                        color:Colors.black,
                        fontWeight:FontWeight.bold,
                        fontSize: 18
                      ),))
                  ],
                
                ),

                //Items
          
                SizedBox(height: 10),

                // GridView.builder(
                //   physics: const NeverScrollableScrollPhysics(),
                //   shrinkWrap: true,
                //   gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 20,
                //     mainAxisSpacing: 20
                //     ), 
                //     itemCount: 6,
                //     itemBuilder: (context,index){
                //       final product = products[index];
                //     return ProductCard(product: product);
                //   },
                //   ),
          
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}



