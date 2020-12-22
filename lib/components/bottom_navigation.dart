import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({this.currentIndex = 1, this.setCurrentIndex});
  final int currentIndex;
  final Function setCurrentIndex;
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: BottomNavigationBar(
        showSelectedLabels: true,
        selectedLabelStyle:
            TextStyle(fontFamily: "Gotham", fontWeight: FontWeight.w300),
        showUnselectedLabels: true,
        currentIndex: widget.currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber[800],
        iconSize: 32,
        elevation: 0,
        items: [
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
        onTap: (index) {
          widget.setCurrentIndex(index);
        },
      ),
    );
  }
}
