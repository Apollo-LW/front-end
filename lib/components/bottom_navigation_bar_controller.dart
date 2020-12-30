import 'package:Apollo/components/background_container.dart';
import 'package:Apollo/pages/browse/browse.dart';
import 'package:Apollo/pages/chat/Chats.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation.dart';

class BottomNavigationBarController extends StatefulWidget {
  final int currentIndex;
  BottomNavigationBarController({this.currentIndex = 1});
  @override
  _BottomNavigationBarControllerState createState() =>
      _BottomNavigationBarControllerState();
}

class _BottomNavigationBarControllerState
    extends State<BottomNavigationBarController> {
  int currentIndex;
  _BottomNavigationBarControllerState({this.currentIndex = 1});
  setCurrentIndex(index) {
    setState(() {
      this.currentIndex = index;
    });
  }

//c
  @override
  Widget build(BuildContext context) {
    return BackgroundContainer(
      child: IndexedStack(
        index: currentIndex,
        children: [Browse(), Home(), Chats()],
      ),
      bottomNavigationBar: BottomNavigation(
        setCurrentIndex: setCurrentIndex,
        currentIndex: currentIndex,
      ),
    );
  }
}
