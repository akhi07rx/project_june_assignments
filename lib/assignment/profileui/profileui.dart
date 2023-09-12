import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatelessWidget {
  @override
  var itemnames = ['settings'];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.wallet_membership_rounded,
                  color: Colors.black,
                )),
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage("https://i.imgur.com/ja6PGNp.jpg"),
            ),
            SizedBox(height: 20), // Add this SizedBox to move the icons down
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Socialmediabutton(Icons.facebook),
                  const SizedBox(width: 30),
                  Socialmediabutton(FontAwesomeIcons.whatsapp),
                  const SizedBox(width: 30),
                  Socialmediabutton(FontAwesomeIcons.instagram),
                  const SizedBox(width: 30),
                  Socialmediabutton(FontAwesomeIcons.discord)
                ],
              ),
            ),
            const ListTile(
              title:
                  Center(child: Text("MEGUMI", style: TextStyle(fontSize: 36))),
              hoverColor: Color.fromRGBO(64, 233, 151, 1),
              subtitle: Center(
                  child: Text("@megumichan", style: TextStyle(fontSize: 15))),
            ),

            const SizedBox(
                height: 80,
                child: Center(
                    child: Text(
                  "Flutter App OPS",
                  style: TextStyle(fontSize: 25),
                ))),
            const SizedBox(height: 8),
            Expanded(
                child: ListView(children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("settings"),
                    leading: Icon(Icons.settings),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("Privacy"),
                    leading: Icon(Icons.account_box),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("Help"),
                    leading: Icon(Icons.help),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              const SizedBox(height: 8),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("Contacts"),
                    leading: Icon(Icons.contacts),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("Child Friendly"),
                    leading: Icon(Icons.child_friendly_sharp),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("Time Zone"),
                    leading: Icon(Icons.access_alarm),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("settings"),
                    leading: Icon(Icons.settings),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("settings"),
                    leading: Icon(Icons.settings),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
            ]))
          ],
        )));
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile(),
  ));
}

Widget Socialmediabutton(IconData icon) => CircleAvatar(
    radius: 20,
    child: Center(
      child: Icon(icon, size: 10),
    ));
