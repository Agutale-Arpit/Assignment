import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:homepage/widget/clickable_card.dart';
import 'package:auto_size_text/auto_size_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: const Color.fromARGB(255, 11, 42, 97),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(15.0)),
                  child: Container(
                    color: const Color.fromARGB(255, 11, 42, 97),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                          color: Colors.white),
                                      SizedBox(width: 8),
                                      AutoSizeText(
                                        '86-12-1874',
                                        style: TextStyle(color: Colors.white),
                                        minFontSize: 10,
                                        maxFontSize: 18,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'R Agraharam, Guntur',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 10),
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/profile.png'),
                                  ),
                                  SizedBox(width: 20),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: const Color.fromARGB(255, 11, 42, 97),
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          SizedBox(height: 25),
                          SizedBox(
                            height: 70,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Color.fromARGB(255, 78, 212, 201),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 8),
                                          Text(
                                            'Book an Appointment',
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Health is our priority',
                                            style: TextStyle(
                                                fontSize: 10.0,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Container(
                                      width: 100,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/one1.png'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          SizedBox(
                            height: 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print('First card tapped!');
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Container(
                                      width: 140,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 70,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          10.0)),
                                              child: Image.asset(
                                                'assets/images/two1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 30,
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Book Appointments',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    'Confirmed Appointments',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 30),
                                GestureDetector(
                                  onTap: () {
                                    print('Second card tapped!');
                                  },
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Container(
                                      width: 140,
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 70,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          10.0)),
                                              child: Image.asset(
                                                'assets/images/two2.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 30,
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Instant Video Consult',
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold)),
                                                  SizedBox(
                                                    height: 7,
                                                  ),
                                                  Text(
                                                    'Connect within 60 secs',
                                                    style:
                                                        TextStyle(fontSize: 10),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  'Specialities',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Container(
                                height: 15,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'View All',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: const Color.fromARGB(
                                            255, 38, 133, 87)),
                                  ),
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      side:
                                          BorderSide(color: Colors.greenAccent),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                            ],
                          ),
                          SizedBox(height: 10),
                          const SizedBox(
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(0.0),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClickableCard(
                                        imagePath: 'assets/images/six1.png',
                                        text: 'Liver',
                                      ),
                                      SizedBox(width: 16.0),
                                      ClickableCard(
                                        imagePath: 'assets/images/six2.png',
                                        text: 'Cardilogy',
                                      ),
                                      SizedBox(width: 16.0),
                                      ClickableCard(
                                        imagePath: 'assets/images/six3.png',
                                        text: 'Physiotherapy',
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ClickableCard(
                                        imagePath: 'assets/images/six4.png',
                                        text: 'CT Surgery',
                                      ),
                                      SizedBox(width: 16.0),
                                      ClickableCard(
                                        imagePath: 'assets/images/six5.png',
                                        text: 'Gastroenterology',
                                      ),
                                      SizedBox(width: 16.0),
                                      ClickableCard(
                                        imagePath: 'assets/images/six6.png',
                                        text: 'Neurology',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 85,
              left: 20,
              right: 20,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search here...',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Container(
                      height: 30,
                      width: 1,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.mic),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 11, 42, 97),
        shape: CircleBorder(),
        child: Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniStartDocked,
      bottomNavigationBar: BottomAppBar(
        height: 100,
        shape: CircularNotchedRectangle(),
        color: const Color.fromARGB(255, 11, 42, 97),
        notchMargin: 5.0,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 45),
                Text('Home', style: TextStyle(color: Colors.white)),
              ],
            ),
            SizedBox(width: 25),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.book_online_outlined),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.white,
                ),
                Text('Booking',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            SizedBox(width: 25),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.category_outlined),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.white,
                ),
                Text(
                  'Categories',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
            SizedBox(width: 25),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.medical_information_outlined),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.white,
                ),
                Text('Doctors',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
            SizedBox(width: 25),
            Column(
              children: [
                IconButton(
                  icon: Icon(Icons.person_2_outlined),
                  onPressed: () {},
                  iconSize: 40,
                  color: Colors.white,
                ),
                Text('Account',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
