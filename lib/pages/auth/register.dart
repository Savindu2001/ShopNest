import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            //Title
            Padding(
              padding: const EdgeInsets.only(top: 40.0,left: 20.0,right: 20.0),
              child: Center(
                child: Text('Create an Account.',
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight:FontWeight.bold,
                ),
                ),
              ),
            ),

            Text('ShopNest',
                style: GoogleFonts.poppins(
                  fontSize: 60,
                  fontWeight:FontWeight.bold,
                ),
                ),
        
            //Form
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    labelText: 'Name',
                    hintStyle: GoogleFonts.poppins(),
                    labelStyle: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    labelText: 'City',
                    hintStyle: GoogleFonts.poppins(),
                    labelStyle: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    labelText: 'Mobile',
                    hintStyle: GoogleFonts.poppins(),
                    labelStyle: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    labelText: 'E-mail',
                    hintStyle: GoogleFonts.poppins(),
                    labelStyle: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hoverColor: Colors.black,
                    fillColor: Colors.black,
                    labelText: 'Password',
                    hintStyle: GoogleFonts.poppins(),
                    labelStyle: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              

              //login Button

              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 300,
                  height: 55,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.black
                  ),
                  child: Center(
                    child: Text('Register',
                    style: GoogleFonts.poppins(
                      fontWeight:FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white
                    ),),
                  ),
                  ),
              ),
              SizedBox(height: 10,),
            
              //register 


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already Member?',
                  style: GoogleFonts.poppins(
                    fontSize:16,
                    fontWeight:FontWeight.w600,
                    color:Colors.black
                  ),
                  ),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: Text('Login',
                    style: GoogleFonts.poppins(
                      fontSize:16,
                    fontWeight:FontWeight.w600,
                    color:Colors.blueAccent
                    )
                    ,))
                ],
              ),
              

              

              
            ],
          ),

          
        
        
          
        ),
      
    );
  }
}