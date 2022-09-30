import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:school_managemnent_stym/pages/notice_page.dart';
import 'package:school_managemnent_stym/widgets/student_info.dart';

import '../utils/constant.dart';
import '../widgets/class_routine.dart';
import '../widgets/main_drawer.dart';
import '../widgets/student_attendance_pie_chart.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  int _current = 0;

  final txtController = TextEditingController();

  @override
  void dispose() {
    txtController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("School Management System"),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        clipBehavior: Clip.antiAlias,
        notchMargin: 3,
        shape: const CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          //selectedIconTheme: IconThemeData.fallback(),
          elevation: 0,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          //backgroundColor: Colors.white,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
            if (_selectedIndex == 0) {
              // provider.getAllContracts();
            } else if (_selectedIndex == 1) {
              Navigator.pushNamed(context, HomePage.routeName);
            } else if (_selectedIndex == 2) {
              Navigator.pushNamed(context, NoticePage.routeName);
            }
          },
          items: [
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      _selectedIndex == 0 ? Colors.red : Colors.transparent,
                  child: Icon(
                    Icons.grid_view,
                    color: _selectedIndex == 0 ? Colors.white : Colors.red,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor:
                      _selectedIndex == 1 ? Colors.red : Colors.transparent,
                  child: Icon(
                    Icons.home,
                    color: _selectedIndex == 1 ? Colors.white : Colors.red,
                  ),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                    backgroundColor:
                        _selectedIndex == 2 ? Colors.red : Colors.transparent,
                    child: Icon(
                      Icons.newspaper,
                      color: _selectedIndex == 2 ? Colors.white : Colors.red,
                    )),
                label: ''),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(width / 25.687),
        child: ListView(
          children: [
            SizedBox(
              height: height / 42.15,
            ),
            Text(
              'Student Info',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: width / 20.55,
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              child: CarouselSlider(
                  items: dummyList
                      .map((e) => Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage("images/bg.png"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(width / 20.55),
                                    color: Colors.red),
                                height: double.maxFinite,
                                width: double.maxFinite,
                              ),
                              Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(width / 51.375),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(width / 20.55),
                                          topRight:
                                              Radius.circular(width / 20.55),
                                        )),
                                    alignment: Alignment.center,
                                    height: width / 2.055,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jhon Doe',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width / 17.125),
                                        ),
                                        SizedBox(
                                          height: width / 82.2,
                                        ),
                                        Text(
                                          'Problem Solver | Expert in FMCG | CSD',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width / 22.833),
                                        ),
                                        SizedBox(
                                          height: width / 82.2,
                                        ),
                                        Text(
                                          'Work at: Bangladesh High Court',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width / 34.25),
                                        ),
                                        Text(
                                          'Studied from: Bangladesh University of Science and Technology',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width / 34.25),
                                        ),
                                        Text(
                                          'From: Dhaka,Bangladesh',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: width / 34.25),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ))
                      .toList(),
                  options: CarouselOptions(
                    height: width / 2.0275,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.7,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                    scrollDirection: Axis.horizontal,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: dummyList.map(
                (image) {
                  //these two lines
                  int index = dummyList.indexOf(image); //are changed
                  return Container(
                    width: width / 51.375,
                    height: width / 51.375,
                    margin: EdgeInsets.symmetric(
                        vertical: width / 41.1, horizontal: 2.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? const Color.fromRGBO(0, 0, 0, 0.9)
                            : const Color.fromRGBO(0, 0, 0, 0.4)),
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: width / 82.2,
            ),
            Text(
              'Student Info',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            StudentInfo(),
            SizedBox(
              height: width / 82.2,
            ),
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text('Click here for see full list'),
            ),
            SizedBox(
              height: height / 10.2,
            ),
            Text(
              'Attendance Info',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height / 12.2,
            ),
            StudentAttendancePie(),
            SizedBox(
              height: height / 12.2,
            ),
            Text(
              'Exam Performance Info',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height / 12.2,
            ),
            StudentInfo(),
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text('Click here for see student full Performance list'),
            ),
            SizedBox(
              height: height / 12.2,
            ),
            Text(
              'Class Routine',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height / 12.2,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Center(
                child: Column(

                  children: [
                    const StudentClassRoutine("One"),
                    SizedBox(
                      height: height / 82.2,
                    ),
                    const StudentClassRoutine("Two"),
                    SizedBox(
                      height: height / 82.2,
                    ),
                    const StudentClassRoutine("Three"),
                    SizedBox(
                      height: height / 82.2,
                    ),
                    const StudentClassRoutine("Four"),
                    SizedBox(
                      height: height / 82.2,
                    ),
                    const StudentClassRoutine("Five"),
                    SizedBox(
                      height: height / 82.2,
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text('Click here for see More class routine'),
            ),
            SizedBox(
              height: height / 12.2,
            ),
            SizedBox(
              height: width / 82.2,
            ),
            Text(
              'Fees',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height / 42.15),
                ),
                elevation: 5,
                child: Stack(
                  children: [
                    Container(
                      height: height / 3.372,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("images/bg2.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(height / 42.15),
                          color: Colors.red),
                    ),
                    Positioned(
                        left: width / 27.4,
                        top: width / 10.275,
                        //bottom: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance',
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: height / 42.15),
                            ),
                            SizedBox(
                              height: width / 82.2,
                            ),
                            Text(
                              'UC 1000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: height / 28.1),
                            ),
                          ],
                        )),
                    Positioned(
                        top: width / 10.275,
                        right: height / 42.15,
                        child: Container(
                          alignment: Alignment.center,
                          height: height / 28.1,
                          width: width / 3.42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(width / 82.2),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'U',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'podesta',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        bottom: width / 10.275,
                        right: height / 42.15,
                        child: const Text(
                          '12/13',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        bottom: width / 10.275,
                        left: width / 27.4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height / 42.15),
                            ),
                            Row(
                              children: [
                                Text(
                                  '0128*****34598',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width / 27),
                                ),
                                SizedBox(
                                  width: width / 41.1,
                                ),
                                const Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                )),
            SizedBox(
              height: width / 82.2,
            ),
            Text(
              'Notice',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(height / 42.15),
                ),
                elevation: 5,
                child: Stack(
                  children: [
                    Container(
                      height: height / 3.372,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("images/bg2.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(height / 42.15),
                          color: Colors.red),
                    ),
                    Positioned(
                        left: width / 27.4,
                        top: width / 10.275,
                        //bottom: 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance',
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: height / 42.15),
                            ),
                            SizedBox(
                              height: width / 82.2,
                            ),
                            Text(
                              'UC 1000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: height / 28.1),
                            ),
                          ],
                        )),
                    Positioned(
                        top: width / 10.275,
                        right: height / 42.15,
                        child: Container(
                          alignment: Alignment.center,
                          height: height / 28.1,
                          width: width / 3.42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(width / 82.2),
                              )),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'U',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                'podesta',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        bottom: width / 10.275,
                        right: height / 42.15,
                        child: const Text(
                          '12/13',
                          style: TextStyle(color: Colors.white),
                        )),
                    Positioned(
                        bottom: width / 10.275,
                        left: width / 27.4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: height / 42.15),
                            ),
                            Row(
                              children: [
                                Text(
                                  '0128*****34598',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: width / 27),
                                ),
                                SizedBox(
                                  width: width / 41.1,
                                ),
                                const Icon(
                                  Icons.visibility_off,
                                  color: Colors.white,
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
