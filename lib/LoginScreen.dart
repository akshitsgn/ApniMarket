// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbasics/Listyourstock.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen>{
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
   return Scaffold(
       backgroundColor: const Color(0xFFADEBB3),
       body: SingleChildScrollView(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           const SizedBox(height: 88),

           const Padding(
             padding:  EdgeInsets.only(left: 25.0), // Add padding to the left
             child: Text('Login',
               style: TextStyle(
                   fontFamily: 'FontMain',
                   fontWeight: FontWeight.w400,
                   fontSize: 30
               ),

             ),
           ),
           const SizedBox(height: 28),
           Column(
             children: [
               const SizedBox(height: 88),
               const SizedBox(height: 37),
               Row(
                   children: [
                     const SizedBox(width: 45),
                     SizedBox(
                       width: screenSize.width* 0.8, // Set your desired width
                       child: Align(
                         alignment: Alignment.centerRight, // Align to the right
                         child: TextField(
                           style: const TextStyle(color: Colors.white),
                           decoration: InputDecoration(
                             filled: true, // Enables background color
                             fillColor: const Color(0xFF000000).withOpacity(0.8), // Set your desired background color
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(28.0), // Set your desired border radius
                               borderSide: const  BorderSide(
                                 color: Colors.grey, // Set your desired border color
                                 width: 1.5, // Set the border width
                               ),
                             ),
                             enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(28.0), // Set your desired border radius
                               borderSide: const BorderSide(
                                 color: Colors.grey, // Set your desired border color
                                 width: 1.5, // Set the border width
                               ),
                             ),
                             focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(28.0), // Set your desired border radius
                               borderSide: const BorderSide(
                                 color: Colors.blueAccent, // Color when focused
                                 width: 2.0, // Set the border width when focused
                               ),
                             ),
                             labelText: 'Phone Number',
                             labelStyle: const TextStyle(color: Colors.white),
                             contentPadding: const EdgeInsets.symmetric(horizontal: 86.0, vertical: 12.0),
                           ),
                         ),
                       ),
                     )// here,
                   ]
               ),
               const SizedBox(height:21),
               ElevatedButton(
                 onPressed: () {
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=> ListYourStockScreen()));
                 },
                 style: ElevatedButton.styleFrom(
                   backgroundColor: const Color(0xFF8ADA76), // Button background color
                   foregroundColor: Colors.black.withOpacity(0.8), // Text color
                   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0), // Button padding
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(28.0), // Rounded corners
                   ),
                 ),
                 child: const Text(' Sign In '),
               ),
               // SizedBox(height:10),
             Container(
                   width: screenSize.width*1.6,
                   height: screenSize.height * 0.5, // Adjust the height as needed
                   child: Image.asset(
                     'assets/images/village.png',
                     fit: BoxFit.cover,
                   ),
                 ),

             ],
           )

         ],
       )
   )
   );
  }

}