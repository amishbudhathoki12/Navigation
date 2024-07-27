// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutterclass/pages/home.dart';
import 'package:flutterclass/pages/profile.dart';
import 'package:flutterclass/pages/settings.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //this is for the selected index of the current page
  int selctedIndex = 0;

//this is the method for updating the selectedi ndex
  void updateIndex(int index) {
    setState(() {
      selctedIndex = index;
    });
  }

//this is the list of pages
  final List pages = [
    //  homepage
    Home(),

    // settingspage
    Settings(),

    //profilepage
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "This is the first page",
        ),
      ),
      body: pages[selctedIndex],
      //bottomnavigationbar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selctedIndex,
        onTap: updateIndex,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings ",
          ),
        ],
      ),

      //using drawer to navigate to different pages
      // drawer: Drawer(
      //   backgroundColor: Colors.deepPurple[100],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //         child: Icon(
      //           Icons.favorite,
      //           size: 48,
      //         ),
      //       ),

      //       //homepage list tiles
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text("H O M E"),
      //         onTap: () {
      //           //pop back the drawer first
      //           Navigator.pop(context);
      //           //go to home page
      //           Navigator.pushNamed(context, 'home');
      //         },
      //       ),

      //       //settings list tiles
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text("S E T T I N G S"),
      //         onTap: () {
      //           //pop the drawer back
      //           Navigator.pop(context);
      //           // go to settings page
      //           Navigator.pushNamed(context, 'settings');
      //         },
      //       )
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Go to 2nd page"),
      //     onPressed: () {
      //       //navigate to 2nd page
      //       //step one
      //       // Navigator.push(
      //       //   context,
      //       //   MaterialPageRoute(builder: (context) => SecondPage()),
      //       // );

      //       //step two
      //       // Navigator.pushNamed(context, 'secondPage');
      //     },
      //   ),
      // ),
    );
  }
}
