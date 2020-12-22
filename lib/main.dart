import 'package:Apollo/components/bottom_navigation_bar_controller.dart';
import 'package:Apollo/pages/Courses/course_tab_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';

import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/pages/chat/chat.dart';

import 'package:Apollo/pages/profile/profile.dart';
import 'package:Apollo/pages/archive/archive.dart';
import 'package:Apollo/pages/admin/admin.dart';
import 'package:Apollo/pages/browse/browse.dart';

void main() => runApp(MaterialApp(

      // initialRoute: '/home',
      home: BottomNavigationBarController(),
      routes: {
        // '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/chat': (context) => Chat(),
        '/course': (context) => Course(),
        '/browse': (context) => Browse(),
        '/profile': (context) => Profile(),
        '/admin': (context) => Admin(),
      },
    ));
//helloo
