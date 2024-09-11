
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListYourStockScreen extends StatefulWidget {
  @override
 _ListYourStockScreen createState()=> _ListYourStockScreen();

}

class _ListYourStockScreen extends State<ListYourStockScreen>{
  List<String> names = ['Rajan Adhekari', 'Navneet Jindal'];
  Map names_items ={
    'items':['Potato','Strawberry'],
    'profileImage':['assets/images/rajan.png','assets/images/navneet.png'],
    'names': ['Rajan Adhekari', 'Navneet Jindal'],
    'productImage':['assets/images/Potato.png','assets/images/strawberry.png'],
    'productDescription' :['Potato\n60 kg\nDelhi\n450','berry\n20 kg\nHissar\n650'],
    'rating':['3','4']
  };
  int _selectedIndex = 0;

  void _onBottomNavBarItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
   return Scaffold(
         appBar: AppBar(
           title: const Text('ApniMarket',
           style: TextStyle(
             fontFamily: 'FontMain',
             fontSize: 25,
             fontWeight: FontWeight.w200,
             color: Color(0xFF0C6F1C)
           )),
           toolbarHeight: screenHeight * 0.1,
         ),
     body:
     ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index ){
            return Card(
              margin: EdgeInsets.all(screenWidth * 0.02),
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: screenWidth * 0.10,
                          height: screenWidth * 0.10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 2.0),
                          ),
                          child:
                          ClipOval(
                            child: Image.asset(
                              names_items['profileImage'][index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Expanded(
                          child: Text(
                            names_items['names'][index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.05,
                            ),
                          ),
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey.withOpacity(0.8),
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02), // Space between name and image
              Container(
               // height: screenHeight * 0.335,
               // width: screenWidth ,
                color: Color(0xFF7D6433), // White background for the box
                child: Row(
                  children: [
                    SizedBox(width: screenWidth*0.05,),
                    Text(names_items['productDescription'][index],
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      color: Colors.white
                    ),),
                    SizedBox(width: screenWidth * 0.2),
                     // Padding for the white box
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          //margin: EdgeInsets.all(8.0),
                          child:
                        Image.asset(
                          names_items['productImage'][index],
                          //height: screenHeight * 0.4,
                         // width: screenWidth * 0.6,// Adjust height as needed
                        ),
              )
                      ),
                    ),
                  ],
                )
              )
                  ],
                ),
              ),
            );

          },
        ),

     bottomNavigationBar: BottomNavigationBar(
       currentIndex: _selectedIndex,
       onTap: _onBottomNavBarItemTapped,
       items: <BottomNavigationBarItem>[
         BottomNavigationBarItem(
           icon: Image.asset( _selectedIndex == 0
               ? 'assets/images/homeselected.png' // Selected state image
               : 'assets/images/home.png',   width: screenWidth * 0.06, // 6% of screen width
             height: screenWidth * 0.06,),
            label: '',
         ),
         BottomNavigationBarItem(
           icon: Image.asset( _selectedIndex == 1
               ? 'assets/images/searchselected.png' // Selected state image
               : 'assets/images/search.png',  width: screenWidth * 0.06, // 6% of screen width
             height: screenWidth * 0.06,),
           label: '',
         ),
         BottomNavigationBarItem(
           icon: Image.asset( _selectedIndex == 2
               ? 'assets/images/Userselected.png' // Selected state image
               : 'assets/images/user.png',   width: screenWidth * 0.06, // 6% of screen width
             height: screenWidth * 0.06,),
           label: '',
         ),
         BottomNavigationBarItem(
           icon:Image.asset( _selectedIndex == 3
               ? 'assets/images/Addselected.png' // Selected state image
               : 'assets/images/Add.png',   width: screenWidth * 0.06, // 6% of screen width
             height: screenWidth * 0.06,),
           label: '',
         ),
         BottomNavigationBarItem(
           icon: Image.asset( _selectedIndex == 4
               ? 'assets/images/giftselected.png' // Selected state image
               : 'assets/images/Gift.png',   width: screenWidth * 0.06, // 6% of screen width
             height: screenWidth * 0.06,),
           label: '',
         ),
       ],
     ),
   );
  }
}