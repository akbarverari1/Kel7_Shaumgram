import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shaumgramm/notification_api.dart';
import 'package:shaumgramm/register.dart';
import 'package:shaumgramm/theme.dart';
import 'package:shaumgramm/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.0
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Main',
      theme: ThemeData(
        primaryColor: const Color(00000),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(Icons.home_filled, color: Colors.white, size: 35)
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.folder,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.folder_copy_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.add_chart,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.add_chart_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "Hi There,",
                style: GoogleFonts.montserrat(color: whiteColor, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "Keep Monitoring Your",
                style: GoogleFonts.montserrat(color: whiteColor, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "Handphone Usage",
                style: GoogleFonts.montserrat(color: whiteColor, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/Lingkaran.png",
                    height: 200,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/12.png",
                    height: 150,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(143, 0, 0, 0),
        title: new Center(
          child: new Text('Task List', textAlign: TextAlign.center),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 30, 0),
            child: Icon(
              Icons.menu,
              size: 35.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Text(
                "Upcoming Event",
                style: GoogleFonts.montserrat(color: whiteColor, fontSize: 15),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 20.0, 50, 0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.night_shelter,
                        size: 90,
                      ),
                      title: Text(
                        'Sleep',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'From 10:00 PM',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 15),
                      child: Text(
                        'Until 05:00 AM',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5.0, 50, 0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.school,
                        size: 90,
                      ),
                      title: Text(
                        'School',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'From 10:00 PM',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 15),
                      child: Text(
                        'Until 05:00 AM',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 5.0, 50, 0),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.checklist,
                        size: 90,
                      ),
                      title: Text(
                        'Doing School Task',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        'From 10:00 PM',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 15, 15),
                      child: Text(
                        'Until 05:00 AM',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(143, 41, 38, 38),
        title: new Center(
          child: new Text('Statistic', textAlign: TextAlign.center),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Card(
                color: Color.fromARGB(143, 41, 38, 38),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.account_circle_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: Padding(
                        padding: EdgeInsets.fromLTRB(20, 4, 0, 0),
                        child: Text(
                          'Kelompok 3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 285, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 112, 107, 107),
                        ),
                        onPressed: () {},
                        child: Text('Report'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 226, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Adiction Report'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 225, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () => NotificationApi.showNotification(
                          title: 'Timeline Report',
                          body: 'Your Timeline Report has been sent via email ',
                          payload: 'timeline.report',
                        ),
                        child: Text('Timeline Report'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 256, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Usage App'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 190, 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Unlock Screen Report'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(143, 41, 38, 38),
        title: new Center(
          child: new Text('Setting', textAlign: TextAlign.center),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Card(
                color: Color.fromARGB(143, 41, 38, 38),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(
                        Icons.account_circle_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: Padding(
                        padding: EdgeInsets.fromLTRB(20, 4, 0, 0),
                        child: Text(
                          'Kelompok 3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 230, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 112, 107, 107),
                        ),
                        onPressed: () {},
                        child: Text('Gadget Control'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 222, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Apps To Monitor'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 239, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Time Settings'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 256, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Extra Time'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 250, 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Notification'),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 205, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 112, 107, 107),
                        ),
                        onPressed: () {},
                        child: Text('Parental Controlling'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 226, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Account Linked'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 250, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Notification'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 229, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Parental Check'),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 287, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 112, 107, 107),
                        ),
                        onPressed: () {},
                        child: Text('More'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 265, 0),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('About Us'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 235, 20),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Color.fromARGB(255, 250, 250, 250),
                        ),
                        onPressed: () {},
                        child: Text('Privacy Policy'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
