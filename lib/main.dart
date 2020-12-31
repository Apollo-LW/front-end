import 'package:Apollo/components/bottom_navigation_bar_controller.dart';
import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/admin/admin.dart';
import 'package:Apollo/pages/browse/browse.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/pages/profile/profile.dart';
import 'package:Apollo/theme/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:Apollo/views/login.dart';

void main() => runApp(Align(
      alignment: Alignment.topRight,
      child: Directionality(
        textDirection: TextDirection.rtl, //
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            Locale("ar"),
          ],
          locale: Locale("ar"),
          theme: ThemeData(
            primaryColor: AppColors.darkBlue,
            accentColor: AppColors.darkBlue,
            fontFamily: 'TheSansArabic',
          ),

          // initialRoute: '/home',

          home: Login(),

          routes: {
            // '/': (context) => Loading(),

            '/home': (context) => Home(),

            '/chat': (context) => Chat(),

            '/course': (context) => CourseView(),

            '/browse': (context) => Browse(),

            '/profile': (context) => Profile(),

            '/admin': (context) => Admin(),
          },
        ),
      ),
    ));
//helloo
//hiii
