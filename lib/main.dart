import 'package:Apollo/components/bottom_navigation_bar_controller.dart';
import 'package:Apollo/pages/Courses/models/question.dart';
import 'package:Apollo/pages/Courses/models/quiz.dart';
import 'package:Apollo/pages/Courses/views/question_page.dart';
import 'package:Apollo/pages/Courses/views/start_quiz_page.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';

import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/pages/chat/chat.dart';

import 'package:Apollo/pages/profile/profile.dart';
import 'package:Apollo/pages/admin/admin.dart';
import 'package:Apollo/pages/browse/browse.dart';

void main() => runApp(Align(
      alignment: Alignment.topRight,
      child: Directionality(
        textDirection: TextDirection.rtl, // set it to rtl

        child: MaterialApp(
          locale: Locale("ar"),
          theme: ThemeData(
            primaryColor: AppColors.darkBlue,
            accentColor: AppColors.darkBlue,
          ),

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
        ),
      ),
    ));
//helloo
