import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/main_drawer.dart';

class NoticePage extends StatefulWidget {
  static const String routeName = 'notice';

  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
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
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(width / 25.68),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  height: height / 16.86,
                  width: height / 16.86,
                  decoration: const BoxDecoration(
                      color: Colors.red, shape: BoxShape.circle),
                  child: IconButton(
                    icon: const Icon(
                      Icons.notification_add,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: width / 82.2,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    clipBehavior: Clip.antiAlias,
                    controller: txtController,
                    enabled: true,
                    decoration: InputDecoration(
                      hintText: 'Search notice..',
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.red,
                      ),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(height / 28.1)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          gapPadding: 4.0),
                      focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(height / 28.1)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          gapPadding: 4.0),
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(height / 28.1)),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          gapPadding: 4.0),
                    ),
                  ),
                ),
                SizedBox(
                  width: width / 82.2,
                ),
              ],
            ),
            SizedBox(
              height: height / 42.15,
            ),
            Text(
              'Important Notice',
              style: TextStyle(
                  fontSize: width / 13.7, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: width / 82.2,
            ),
            SizedBox(
              height: width / 82.2,
            ),
            SizedBox(
              height: width / 82.2,
            ),
            buildCustomStack(width, height, 'Eid holiday',
                'From  3 January 2022 to 15 January 2022'),
            SizedBox(
              height: width / 82.2,
            ),
            buildCustomStack(width, height, 'Eid holiday',
                'From  3 January 2022 to 15 January 2022'),
            SizedBox(
              height: width / 82.2,
            ),
            buildCustomStack(width, height, 'Eid holiday',
                'From  3 January 2022 to 15 January 2022'),
            SizedBox(
              height: width / 82.2,
            ),
            buildCustomStack(width, height, 'Eid holiday',
                'From  3 January 2022 to 15 January 2022'),
            SizedBox(
              height: width / 82.2,
            ),
            buildCustomStack(width, height, 'Eid holiday',
                'From  3 January 2022 to 15 January 2022'),
            SizedBox(
              height: width / 82.2,
            ),
            buildCustomStack(width, height, 'Eid holiday',
                'From  3 January 2022 to 15 January 2022'),
          ],
        ),
      ),
    );
  }

  Stack buildCustomStack(
      double width, double height, String getWay, String time) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          height: width / 4.11,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFFD02539),
            borderRadius: BorderRadius.circular(35),
          ),
          child: Padding(
            padding: EdgeInsets.all(width / 34.25),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.ballot_outlined,
                  color: Colors.red,
                ),
              ),
              title: Text(
                getWay,
                style: TextStyle(color: Colors.white, fontSize: width / 22.833),
              ),
              subtitle: Text(
                time,
                style: TextStyle(color: Colors.white, fontSize: width / 29.357),
              ),

            ),
          ),
        ),
        Positioned(
            top: width / 12.08823,
            left: -height / 28.1,
            bottom: width / 12.08823,
            child: Container(
              // height: 5,
              width: width / 10.8157,

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(width / 102.75),
              ),
            ))
      ],
    );
  }
}
