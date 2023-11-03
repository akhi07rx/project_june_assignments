import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ChatScreen(),
  ));
}

class ChatScreen extends StatelessWidget {
  var name = [
    'Nidheesh',
    'Akhil',
    'Abhiram',
    'Devika',
    'Aravind',
    'Jayesh',
    'Vishnu',
    'Manoj',
    'Madhu',
    'Nandhana'
  ];
  var image = [
    'assets/images/elon musk.jpg',
    'assets/images/empire.jpg',
    'assets/images/megumi.jpg',
    'assets/images/mystry.jpg',
    'assets/images/o.png',
    'assets/images/pit.png',
    'assets/images/Tea.jpg',
    'assets/images/hp.png',
    'assets/images/biriyani.jpg',
    'assets/images/ut.png'
  ];
  var time = [
    '1:10 pm',
    '3:16 pm',
    '1:56 pm',
    '8:10 am',
    '6:59 am',
    '7:10 pm',
    '9:10 am',
    '2:30 pm',
    '4:45 pm',
    '5:21 am',
  ];
  var msg = [
    'sticker',
    'Hi',
    'Anime vera ondo',
    'hei',
    'mone',
    'sugalle',
    'openheimer kanan poyalo',
    'are u bzy',
    'when is your next trip ',
    'mere desh vaasiyom'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text(msg[index]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                    trailing: Wrap(direction: Axis.vertical, children: [
                      Text(time[index]),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            minRadius: 2,
                            maxRadius: 10,
                            backgroundColor: Colors.teal,
                            child: Text('2')),
                      )
                    ]),
                  ),
                )),
      ),
    );
  }
}
