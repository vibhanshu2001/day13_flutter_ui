import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Telegram',
          style: TextStyle(
              color: Color.fromRGBO(9, 50, 236, 1),
              fontWeight: FontWeight.bold,
              fontSize: 35),
        ),
        leading: Icon(
          Icons.notifications_off,
          color: Colors.black.withOpacity(0.6),
          size: 30,
        ),
        actions: [
          Icon(
            Icons.bookmark_border_outlined,
            color: Colors.black.withOpacity(0.6),
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Icon(
              Icons.search,
              color: Colors.black.withOpacity(0.6),
              size: 30,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(9, 50, 236, 1),
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Icon(Icons.home, color: Colors.white,size: 40,),
              ),
              // ignore: deprecated_member_use
              title: Text("Home",
              style: TextStyle(
                color: Colors.white
              ),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.phone_outlined, color: Colors.white,size: 40,),
              // ignore: deprecated_member_use
              title: Text("Phone",
                style: TextStyle(
                    color: Colors.white
                ),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined, color: Colors.white,size: 40,),
              // ignore: deprecated_member_use
              title: Text("Account",
                style: TextStyle(
                    color: Colors.white
                ),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined, color: Colors.white,size: 40,),
              // ignore: deprecated_member_use
              title: Text("Settings",
                style: TextStyle(
                    color: Colors.white
                ),)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Color.fromRGBO(9, 50, 236, 1), // Text colour here
                      width: 3.0, // Underline width
                    ))),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        "Tops",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Color.fromRGBO(9, 50, 236, 1),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Messages",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  Text(
                    "Groups",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                  Text(
                    "Channels",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 18),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Messages',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Manuel",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                image: "assets/images/t2.jpg",
                status: Colors.green,
                time: "22:30",
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Emanda",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                image: "assets/images/t3.jpg",
                status: Colors.grey,
                time: "20:13",
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Loreat",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                image: "assets/images/t4.png",
                status: Colors.grey,
                time: "06:05",
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Margot",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.grey,
                ),
                image: "assets/images/t1.png",
                status: Colors.red,
                time: "02:34",
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Previous messages",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(9, 50, 236, 1),
                        fontSize: 17),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_circle_down,
                    color: Color.fromRGBO(9, 50, 236, 1),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Groups',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.grey[800],
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.grey[800],
                    size: 28,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Manuel",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                image: "assets/images/t2.jpg",
                status: Colors.green,
                time: "22:30",
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Emanda",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                image: "assets/images/t3.jpg",
                status: Colors.grey,
                time: "20:13",
              ),
              SizedBox(
                height: 15,
              ),
              CardWidget(
                name: "Loreat",
                message: "Lorem Ipsum where lore..",
                statusIcon: Icon(
                  Icons.check,
                  color: Colors.green,
                ),
                image: "assets/images/t4.png",
                status: Colors.grey,
                time: "06:05",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  String name;
  String message;
  Icon statusIcon;
  String image;
  Color status;
  String time;
  CardWidget(
      {this.name,
      this.message,
      this.statusIcon,
      this.image,
      this.status,
      this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromRGBO(246, 246, 246, 1),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Stack(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(image), fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                      Positioned(
                        top: 60,
                        left: 65,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            color: status,
                            borderRadius: BorderRadius.circular(7.5),
                            border: Border.all(width: 2, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    message,
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                statusIcon,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
