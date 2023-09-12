import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MusicX(),
  ));
}

class MusicX extends StatelessWidget {
  var images = [
    "https://i.imgur.com/Tyn93iK.jpg",
    "https://i.imgur.com/MpurR5l.jpg",
    "https://i.imgur.com/aSRBBTu.jpg",
    "https://i.imgur.com/eOAL4zU.jpg",
    "https://i.imgur.com/AoNomEG.jpg",
    "https://i.imgur.com/e1zb5xk.jpg",
    "https://i.imgur.com/JyiYl9s.jpg",
    "https://i.imgur.com/W8sKhiG.jpg",
    "https://i.imgur.com/W8sKhiG.jpg",
    "https://i.imgur.com/SfTzgWU.jpg",
    "https://i.imgur.com/znJrg1f.jpg",
    "https://i.imgur.com/Xtp6EY3.jpg",
    "https://i.imgur.com/xyBsHdH.jpg",
    "https://i.imgur.com/lEibvsA.jpg",
    "https://i.imgur.com/SfbNPmx.jpg",
    "https://i.imgur.com/7EUEeCI.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              floating: true,
              pinned: true,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Playlist",
                style: GoogleFonts.nunito(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextField(
                    cursorColor: Colors.white10,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.pinkAccent),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.pinkAccent,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                childCount: images.length,
              ),
            ),
          ],
        )));
  }
}
