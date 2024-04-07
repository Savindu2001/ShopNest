
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class AddToCardFloat extends StatelessWidget {
  final Function() onAdd;
  final Function() onRemove;
  const AddToCardFloat({
    super.key,
    required this.currentNumber, required this.onAdd, required this.onRemove,
  });

  final int currentNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 80,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20)
    ),
    padding: const EdgeInsets.symmetric(horizontal: 15),
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
    
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              IconButton(
                onPressed: onRemove, 
                iconSize: 18,
                icon: Icon(Ionicons.remove)
                ),
    
              SizedBox(width: 5,),
    
              Text(
                currentNumber.toString()
              ),
    
              SizedBox(width: 5,),
    
              IconButton(
                onPressed: onAdd, 
                iconSize: 18,
                icon: Icon(Ionicons.add)
                ),
    
            ],
          ),
        ),
    
    
        //Add to Cart Button 
    
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(16)
            ),
            alignment: Alignment.center,
            child: Text('Add to Cart',
            style: GoogleFonts.poppins(
              fontSize:20,
              color: Colors.white,
              fontWeight:FontWeight.bold,
            ),),
          ),
        ),
    
    ],),
    );
  }
}
