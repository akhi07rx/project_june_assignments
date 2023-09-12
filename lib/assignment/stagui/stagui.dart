import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stag_Grid(),
  ));
}

class Stag_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FOTO"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2, //width
                mainAxisCellCount: 2, //height
                child:
                    Container(child: Lottie.asset("assets/animation/tweet.json")

                        // color: Colors.green,
                        // child: const Center(child: Icon(Icons.widgets)),
                        )),
            StaggeredGridTile.count(
              crossAxisCellCount: 2, //width
              mainAxisCellCount: 4, //height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1691247876282-93007fa2e16e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                      fit: BoxFit.fill, // Set image to fill tile
                    ),
                  ), // Image
                  const Text(
                    '\nAllan Rodrigues\n',
                    style: TextStyle(
                        color: Color(0xFF000000)), // Set text color to white
                  ), // Text
                  const Text(
                    'A Group of Sea Lions\n',
                    style:
                        TextStyle(color: Colors.grey), // Set text color to grey
                  ), // Subtext
                ],
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3, //width
              mainAxisCellCount: 1, //height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1691161651055-0ba310da7bc8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
                      fit: BoxFit.fill, // Set image to fill tile
                    ),
                  ), // Image
                  const Text(
                    '\nAllan Rodrigues\n',
                    style: TextStyle(
                        color: Color(0xFF000000)), // Set text color to white
                  ), // Text
                  const Text(
                    'A Group of Sea Lions\n',
                    style:
                        TextStyle(color: Colors.grey), // Set text color to grey
                  ), // Subtext
                ],
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4, //width
              mainAxisCellCount: 2, //height
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1691273553489-615e4279af43?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
                      fit: BoxFit.fitWidth, // Set image to fill tile
                    ),
                  ), // Image
                  const Text(
                    '\nHrant Khachatryan\n',
                    style: TextStyle(
                        color: Color(0xFF000000)), // Set text color to white
                  ), // Text
                  const Text(
                    'Purple\n',
                    style:
                        TextStyle(color: Colors.grey), // Set text color to grey
                  ), // Subtext
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




            // StaggeredGridTile.count(
            //     crossAxisCellCount: 1, //width
            //     mainAxisCellCount: 2, //height
            //     child: Container(
            //       color: Colors.blue,
            //       child: const Center(child: Icon(Icons.map)),
            //     )),
            // StaggeredGridTile.count(
            //     crossAxisCellCount: 1, //width
            //     mainAxisCellCount: 1, //height
            //     child: Container(
            //       color: Colors.purple,
            //       child: const Center(child: Icon(Icons.bluetooth)),
            //     )),
            // StaggeredGridTile.count(
            //     crossAxisCellCount: 1, //width
            //     mainAxisCellCount: 1, //height
            //     child: Container(
            //       color: Colors.pink,
            //       child: const Center(child: Icon(Icons.send)),
            //     )),