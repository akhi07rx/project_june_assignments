// PopupMenuButton(itemBuilder: (context) {
//             return [
//               const PopupMenuItem(child: Text("Fresh Arrivals")),
//               const PopupMenuItem(child: Text("New")),
//               const PopupMenuItem(child: Text("Profile")),
//               const PopupMenuItem(child: Text("Settings")),
//               const PopupMenuItem(child: Text("Help")),
//             ];
//           })

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_Separated(),
  ));
}

class ListView_Separated extends StatelessWidget {
  var p_names = [
    "Apple",
    "Orange",
    "Grape",
    "Banana",
    "Watermelon",
    "Kiwi",
    "Coconut"
  ];

  var p_images = [
    'assets/fruits/apple.png',
    'assets/fruits/orange.png',
    'assets/fruits/grape.png',
    'assets/fruits/banana.png',
    'assets/fruits/watermelon.png',
    'assets/fruits/kiwi.png',
    'assets/fruits/coconut.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PRODUCT LIST"),
        centerTitle: true,
        backgroundColor: Color(0xFF5798EC),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag_rounded),
            onPressed: () {
              // Handle the shopping cart button press here
            },
          ),
        ],
      ),
      body: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 80, // Set the height of the card
              width: 100, // Set the width of the card
              child: Card(
                child: Row(
                  children: [
                    Image.asset(
                      p_images[index],
                      width: 50,
                      height: 50,
                    ),
                    Text(p_names[index]),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return const Card(
                color: Color(0xFF30D0F4),
                child: Text("FRESH ARRIVAL"),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: p_names.length),
    );
  }
}
