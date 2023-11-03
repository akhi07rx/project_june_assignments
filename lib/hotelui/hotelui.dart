import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hotel_Home(),
  ));
}

class Hotel_Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue,
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.favorite_border),
          ],
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter your Location",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Kochi,kerala",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.pink,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_hotel_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      "Hotel",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blue,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_restaurant,
                      color: Colors.white,
                    ),
                    Text(
                      "Restaurant",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.orange,
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.local_cafe_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      "Cafe",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  opacity: .5,
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1582719478250-c89cae4dc85b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
                ),
              ),
              //child: const Icon(Icons.star_border,),
              child: Stack(children: [
                Positioned(
                  right: 10,
                  top: 10,
                  child: Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
            Container(
              padding: const EdgeInsets.all(32.0),
              color: Colors.white,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hotel Kochi Crown,Kerala",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            Text(
                              "Edappally - Pukkattupady Road, Pipeline line Junction Thrikkakara Pipe line Junction Thrikkakara, Edappally - Pukkatupady Road, Kochi (Cochin)",
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Icon(Icons.star, color: Colors.yellowAccent),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
