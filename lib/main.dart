import 'package:flutter/material.dart';
import 'package:flutterbasics/CreateAccountOtpScreen.dart';
import 'package:flutterbasics/HomeScreen.dart';
import 'package:flutterbasics/Listyourstock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  HomeScreen()//MyHomePage(title: 'app')
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedValue;
  final List<String> fruits = ['akshit','shaurya', 'lokesh'];
// targets
  // lists views and grid views
  // card
  // alert dialog box
  // bottom navigation
  // dropdown list akshit madan ui concepts.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Example'),
      ),
         body: Center(

         )


      //Center(
        //   child: Column(
        //     children: [
        //       Container(
        //         margin: EdgeInsets.all(10),
        //         height: 70,
        //         color: Colors.white,
        //         width: MediaQuery.of(context).size.width,
        //         child: DropdownButton<String>(
        //           value: _selectedValue, // Current selected value
        //           items: <String>['Apple', 'Banana', 'Orange'].map((String value) {
        //             return DropdownMenuItem<String>(
        //               value: value,
        //               child: Text(value),
        //             );
        //           }).toList(),
        //           onChanged: (String? newValue) {
        //             setState(() {
        //               _selectedValue = newValue; // Update the selected value
        //             });
        //           },
        //         ),
        //       )
        //     ],
        //   ),
        // )




      //Center(  // Bottommodalsheet
       //   child: ElevatedButton(onPressed:(){
       //     showModalBottomSheet(
       //       context: context,
       //       builder: (BuildContext context) {
       //         return const Column (
       //           mainAxisSize: MainAxisSize.min, // Optional: Ensures the column takes only as much vertical space as its content
       //           children: <Widget>[
       //             ListTile(
       //               title: Text('Orange'),
       //             ),
       //             ListTile(
       //               title: Text('Apple'),
       //             ),
       //             ListTile(
       //               title: Text('Banana'),
       //             ),
       //           ],
       //         );
       //       },
       //     );
       //   },
       //       child: Text('bottom sheet')
       //   ),
       // )



      //Center( // Alert Dialog Box
      //   child: ElevatedButton(onPressed: (
      //       ){
      //     _showDialog(context);
      //   },
      //       child: Text('show alert')),
      // )
      // Future<void> _showDialog (BuildContext context) async {
      //   return showDialog<void>(
      //     context: context,
      //     builder: (BuildContext context) {
      //       return AlertDialog(
      //         title: Text('Dialog Title'),
      //         content: Text('This is the content of the alert dialog.'),
      //         actions: <Widget>[
      //           TextButton(
      //             onPressed: () {
      //               Navigator.of(context).pop(); // Closes the dialog
      //             },
      //             child: Text('OK'),
      //           ),
      //         ],
      //       );
      //     },
      //   );
      // }

      // drawer: Drawer(  // Drawer
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(color: Colors.white, fontSize: 24),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text('Home'),
      //         onTap: () {
      //           // Handle navigation or other actions
      //           Navigator.pop(context); // Close the drawer
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //         onTap: () {
      //           // Handle navigation or other actions
      //           Navigator.pop(context); // Close the drawer
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // appBar: AppBar(
      //   title: Text('Fruit List'),
      // ),
      // body: Container(
      //   color: Colors.white,
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         leading: Icon(Icons.folder),
      //         title: Text('hey'),
      //       ),
      //       // Add more ListTiles or widgets here
      //     ],
      //   ),
      // ),



      // ListView.builder( // dismissible
      //   itemCount: fruits.length,
      //   itemBuilder: (context, index) {
      //     final fruit = fruits[index];
      //
      //     return Dismissible(
      //       key: Key(fruit),
      //       child: ListTile(
      //         title: Text(fruit),
      //       ),
      //       onDismissed: (direction) {
      //         if(direction== DismissDirection.startToEnd) {
      //           ScaffoldMessenger.of(context).showSnackBar(
      //             SnackBar(content: Text('$fruit dismissed')),
      //           );
      //
      //
      //         }
      //       },
      //     );
      //   },
      // ),

      //Container( // Snackbar
        //   child: Center(
        //     child: ElevatedButton(onPressed: (){
        //       final snackbar = SnackBar(content: Text('this is snackbar'));
        //       ScaffoldMessenger.of(context).showSnackBar(snackbar);
        //
        //     }, child: Text('snackbar')),
        //   ),
        // )


      //Container( // GridView
       //   child: GridView(
       //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       //     children: [
       //       Card(
       //         child: Center(child: Text('hey')
       //       )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //       Card(
       //           child: Center(child: Text('hey')
       //           )),
       //
       //
       //
       //     ]
       //   ),
       // )



      // Container( // ListView
      //   child: ListView.builder(
      //     itemCount: fruits.length,
      //     itemBuilder: (context, index ){
      //    return Card(
      //      child: ListTile(
      //        leading: Icon(Icons.person),
      //        title: Text(fruits[index]),
      //      )
      //    );
      //     },
      //   ),
      // )
    );
  }

}
