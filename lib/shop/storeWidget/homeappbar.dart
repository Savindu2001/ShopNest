import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        //left Icon
        IconButton(
          onPressed: (){},
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(15),
          ), 
          iconSize: 30,
          icon: const Icon(Ionicons.grid_outline,),
          ),
    
        //right Icon
        IconButton(
          onPressed: (){},
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(15),
          ), 
          iconSize: 35,
          icon: const Icon(Ionicons.notifications_outline,),
          ),
      ],
    );
  }
}