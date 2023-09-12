import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Drawer_ex(),
  ));
}

class Drawer_ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Center(
            child: Text(
              "Famous CE0s",
              style: TextStyle(color: Colors.black),
            ),
          ),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        drawer: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff1f005c),
                  Color(0xff5b0060),
                  Color(0xff870160),
                  Color(0xffac255e),
                  Color(0xffca485c),
                  Color(0xffe16b5c),
                  Color(0xfff39060),
                  Color(0xffffb56b),
                ],
              ),
            ),
            child: ListView(
              children: const [
                DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://akm-img-a-in.tosshub.com/businesstoday/images/assets/202302/0-5-sixteen_nine.jpg?size=948:533",
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Sundar Pichai\n",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "CEO of Alphabet INC",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white),
                  title: Text("Home", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading:
                      Icon(Icons.space_dashboard_outlined, color: Colors.white),
                  title: Text("Leads", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.leak_add_outlined, color: Colors.white),
                  title: Text("Clients", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading:
                      Icon(Icons.person_add_alt_1_sharp, color: Colors.white),
                  title:
                      Text("Projects", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.subject_sharp, color: Colors.white),
                  title:
                      Text("Patients", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.payments_rounded, color: Colors.white),
                  title:
                      Text("Payments", style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: Icon(Icons.code_off_sharp, color: Colors.white),
                  title: Text("Library", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
        body: Column(children: [
          Center(
              child: Image.network(
                  "https://assets.telegraphindia.com/telegraph/49afe222-492d-47a2-9479-64a629445b60.jpg")),
          const Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text("""
          \n\n
          
          Pichai Sundararajan (born June 10, 1972[3][4][5]), better known as Sundar Pichai (/ˈsʊndɑːr pɪˈtʃaɪ/), is an American business executive.[6] He is the chief executive officer (CEO) of Alphabet Inc. and its subsidiary Google.[7]
          
          Pichai began his career as a materials engineer. Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004,[8] where he led the product management and innovation efforts for a suite of Google's client software products, including Google Chrome and ChromeOS, as well as being largely responsible for Google Drive. In addition, he went on to oversee the development of other applications such as Gmail and Google Maps. In 2010, Pichai also announced the open-sourcing of the new video codec VP8 by Google and introduced the new video format, WebM. The Chromebook was released in 2012. In 2013, Pichai added Android to the list of Google products that he oversaw.
          
          Pichai was selected to become the next CEO of Google on August 10, 2015, after previously being appointed Product Chief by CEO Larry Page. On October 24, 2015, he stepped into the new position at the completion of the formation of Alphabet Inc., the new holding company for the Google company family. He was appointed to the Alphabet Board of Directors in 2017.[9]
          
          Pichai was included in Time's annual list of the 100 most influential people in 2016[10] and 2020.[11]"""),
            ),
          )
        ]));
  }
}
