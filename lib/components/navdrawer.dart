import 'package:Apollo/pages/admin/onboarding/step.dart';
import 'package:Apollo/pages/admin/onboarding/step_1.dart';
import 'package:Apollo/pages/my_courses.dart';
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
        accountName: Text("محمد الريماوي"),
        accountEmail: Text("Mohrimawiz@gmail.com"),
        onDetailsPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => SimpleDialog(
              title: const Text('Dialog Title'),
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('user@example.com'),
                  onTap: () => Navigator.pop(context, 'user@example.com'),
                ),
                ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: const Text('user2@gmail.com'),
                  onTap: () => Navigator.pop(context, 'user2@gmail.com'),
                ),
                ListTile(
                  leading: const Icon(Icons.add_circle),
                  title: const Text('Add account'),
                  onTap: () => Navigator.pop(context, 'Add account'),
                ),
              ],
            ),
          ).then((returnVal) {
            if (returnVal != null) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('You clicked: $returnVal'),
                  action: SnackBarAction(label: 'OK', onPressed: () {}),
                ),
              );
            }
          });
        },
        otherAccountsPictures: [
          InkWell(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('LS'),
            ),
            onTap: () {},
          ),
          InkWell(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text('MA'),
            ),
            onTap: () {},
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
          title: Text("حسابي"),
          leading: const Icon(Icons.person),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/profile');
          },
        ),
        ListTile(
          title: Text("الأرشيف"),
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
            title: Text("مؤسساتي"),
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
          title: Text("كورساتي"),
          leading: const Icon(Icons.public),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyCourses(),
                ));
          },
        ),
        Divider(),
        ListTile(
          title: Text("لوحة التحكم"),
          leading: const Icon(Icons.security),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Divider(),
        ListTile(
          title: Text("إنشاء دورة جديدة"),
          leading: const Icon(Icons.school),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Step1(),
                ));
          },
        ),
      ],
    );
    return Drawer(
      child: drawerItems,
    );
  }
}
