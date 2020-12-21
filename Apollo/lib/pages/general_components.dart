import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';

import 'package:Apollo/pages/profile/profile.dart';
import 'package:Apollo/pages/archive/archive.dart';
import 'package:Apollo/pages/admin/admin.dart';
import 'package:Apollo/pages/browse/browse.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var localization = GalleryLocalizations.of(context);
    final drawerHeader = UserAccountsDrawerHeader(
        decoration: BoxDecoration(
          color: Colors.cyan[900],
        ),
        accountName: Text("Mohammad Rimawi"),
        accountEmail: Text("Mohrimawiz@gmail.com"),
        otherAccountsPictures: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('LS'),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('MA'),
          )
        ],
        currentAccountPicture: InkWell(
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/profile');
          },
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('MR'),
          ),
        ));
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text("Profile"),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/profile');
          },
        ),
        ListTile(
          title: Text("Archive"),
          leading: const Icon(Icons.book),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ExpansionTile(
            // expandedCrossAxisAlignment: CrossAxisAlignment.start,
            title: Text("My Institutions"),
            leading: const Icon(Icons.business),
            children: [
              ListTile(
                title: Text("Princess Sumaya Universty for Techonology"),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('MA'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("HTU - PSUT"),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('MA'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text("Work"),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('MA'),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ]),
        Divider(),
        ListTile(
          title: Text("Published Courses"),
          leading: const Icon(Icons.public),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Unpublished Courses"),
          leading: const Icon(Icons.public_off),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          title: Text("Admin"),
          leading: const Icon(Icons.security),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Drawer(
      child: drawerItems,
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'تصفح',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الصفحة الرئيسة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble),
          label: 'الرسائل',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (value) => {
        setState(() {
          selectedIndex = value;
        }),
        if (value == 0)
          Navigator.pushNamed(context, '/browse')
        else if (value == 1)
          Navigator.pushReplacementNamed(context, '/home')
        else if (value == 2)
          Navigator.pushNamed(context, '/chat'),
        print(value),
      },
    );
  }
}
