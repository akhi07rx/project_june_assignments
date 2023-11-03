import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_june_assignments/assignment/whatsappui/status.dart';
import 'call.dart';
import 'chat.dart';
import 'community.dart';

void main() {
  runApp(MaterialApp(
    home: whatsapp(),
  ));
}

class whatsapp extends StatelessWidget {
  const whatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF075E54),
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text('New group')),
                PopupMenuItem(child: Text('New broadcast')),
                PopupMenuItem(child: Text('Linked devices')),
                PopupMenuItem(child: Text('Starred messages')),
                PopupMenuItem(child: Text('Payments')),
                PopupMenuItem(child: Text('Settings')),
              ];
            }),
          ],
          bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: EdgeInsets.zero,
              tabs: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .1,
                  child: FaIcon(FontAwesomeIcons.peopleGroup),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text('Chats'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text('Status'),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Text('Calls'),
                )
              ]),
        ),
        body: TabBarView(children: [comm(), ChatScreen(), status01(), call()]),
      ),
    );
  }
}
