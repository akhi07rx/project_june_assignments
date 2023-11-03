import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: comm(),
  ));
}

class comm extends StatelessWidget {
  var name = ['New community'];
  var image = ['assets/images/hp.jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
            1,
            (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                  ),
                )),
      ),
    );
  }
}
