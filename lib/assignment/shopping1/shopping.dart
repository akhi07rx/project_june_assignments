import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: shrine(),
  ));
}

class shrine extends StatelessWidget {
  var name = [
    'Vagabond Sack',
    'Stella Eyeglasses',
    'Whitney Belt',
    'H & M Oxford Blue Shirt',
    'Strut earrings',
    'Varsity socks'
  ];
  var price = [120, 58, 35, 98, 34, 12];
  var image = [
    'assets/shopping/sack.png',
    'assets/shopping/glass.png',
    'assets/shopping/belt.png',
    'assets/shopping/shirt.png',
    'assets/shopping/earring.png',
    'assets/shopping/socks.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("shrine"),
        backgroundColor: Colors.indigoAccent,
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.shopify),
          SizedBox(width: 10),
          //Icon(Icons.)
        ],
      ),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(
              6,
              (index) => Card(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(image[index]))),
                          ),
                          Text(name[index]),
                          Text("\$ ${price[index]}"),
                        ],
                      ),
                    ),
                  )))),
    );
  }
}
