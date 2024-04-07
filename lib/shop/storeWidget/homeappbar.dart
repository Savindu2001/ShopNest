import 'dart:ui';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  Future _signOut() async{
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
        //left Icon
        IconButton(
          onPressed: ()=> _showBottomSheet(context),
          style: IconButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.all(15),
          ), 
          iconSize: 30,
          icon: const Icon(Ionicons.grid_outline,),
          ),
    
        //right Icon
        IconButton(
          onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: ((context) => )));
          },
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

 void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        'ShopNest',
                        style: GoogleFonts.poppins(
                          fontWeight:FontWeight.bold,
                          fontSize: 30,
                          color:Colors.white
                        ),
                      ),
            
                    IconButton(
                      onPressed: (){
                          Navigator.pop(context);
                      }, 
                      icon: Icon(Ionicons.close,size: 35,color: Colors.white,)
                      ),
            
                
                  ],
                ),
                SizedBox(height: 20.0),
                
                ListTile(
                  leading: Icon(Ionicons.person,color: Colors.white),
                  title: Text('Profile',
                  style: GoogleFonts.poppins(
                          fontWeight:FontWeight.bold,
                          fontSize: 20,
                          color:Colors.white
                        ),),
                  onTap: () {
                   
                  },
                ),

                ListTile(
                  leading: Icon(Ionicons.filter_circle,color: Colors.white),
                  title: Text('Order History',
                  style: GoogleFonts.poppins(
                          fontWeight:FontWeight.bold,
                          fontSize: 20,
                          color:Colors.white
                        ),),
                  onTap: () {
                   
                  },
                ),

                ListTile(
                  leading: Icon(Ionicons.call,color: Colors.white),
                  title: Text('Customer Care',
                  style: GoogleFonts.poppins(
                          fontWeight:FontWeight.bold,
                          fontSize: 20,
                          color:Colors.white
                        ),),
                  onTap: () {
                   
                  },
                ),

                ListTile(
                  tileColor: Colors.black,
                  leading: Icon(Ionicons.exit,color: Colors.white),
                  title: Text('Logout',
                  style: GoogleFonts.poppins(
                          fontWeight:FontWeight.bold,
                          fontSize: 20,
                          color:Colors.white
                        ),),
                  onTap: (){},
                ),

                SizedBox(height: 20.0),
                
              ],
            ),
          ),
        );
      },
    );
 }}