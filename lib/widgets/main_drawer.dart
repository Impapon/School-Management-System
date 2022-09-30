import 'package:flutter/material.dart';
import 'package:school_managemnent_stym/pages/notice_page.dart';

import '../pages/home_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 150,
            color: Theme.of(context).primaryColor,
            child: Text(
              "School Management System",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, HomePage.routeName);
            },
            leading: const Icon(Icons.home),
            title: const Text('Home'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: const Text('Student Info'),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info),
            title: const Text('Attendance Info'),
          ),
          ListTile(
            onTap: () {
              //Navigator.pushNamed(context, UserProfilePage.routeName);
            },
            leading: Icon(Icons.power),
            title: const Text('Exam Performance'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.note),
            title: const Text('Class Routine'),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.money),
            title: const Text('Fees'),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, NoticePage.routeName);
            },
            leading: const Icon(Icons.newspaper),
            title: const Text('Notice'),
          ),
        ],
      ),
    );
  }
}
