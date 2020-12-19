import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';

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
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('MR'),
        ));
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text("Apollo 1"),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text("Apollo 2"),
          leading: const Icon(Icons.comment),
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
          icon: Icon(Icons.chat_bubble),
          label: 'الرسائل',
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الصفحة الرئيسة',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'المواد',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: (value) => {
          setState(() {
                  selectedIndex = value;
          }),
        if(value==0) Navigator.pushNamed(context, '/chat')
        else if(value==1)Navigator.pushNamed(context, '/home')
        else if(value==2)Navigator.pushNamed(context, '/home'),

        print(value),
      },
    );
  }
}
