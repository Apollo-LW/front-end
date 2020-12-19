import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';

import 'package:Apollo/pages/general_components.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/pages/chat/chat.dart';




void main() => runApp(
  MaterialApp(
  initialRoute: '/home',
  routes: { 
    // '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/chat': (context) => Chat(),
    '/course': (context) => Course(),

  },
  
  
  )
    
  );




