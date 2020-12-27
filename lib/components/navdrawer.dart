import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:Apollo/pages/profile/profile.dart';
import 'package:Apollo/pages/archive/archive.dart';
import 'package:Apollo/pages/admin/admin.dart';
import 'package:Apollo/pages/browse/browse.dart';
import 'package:Apollo/pages/archive/archive.dart';

import 'package:Apollo/views/institution.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Archive()),
            );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Institution()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Institution()),
                  );
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Institution()),
                  );
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
