import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:Apollo/pages/Courses/Course.dart';
import 'package:Apollo/pages/home/home_components.dart';
import 'package:Apollo/pages/home/home.dart';
import 'package:Apollo/pages/chat/chat.dart';
import 'package:Apollo/pages/chat/chatComponents.dart';

List<Message> messages = [
  Message(text: "Hello There", userID: "123", time: "12:30pm"),
  Message(
      text: "I wanted to ask you something..", userID: "123", time: "12:30pm"),
  Message(text: "whats up?", userID: "124", time: "12:31pm"),
  Message(
      text: "How do we make an awesome application like this?",
      userID: "123",
      time: "12:33pm"),
  Message(
      text:
          "It is easy, you just need to have an idea and forget about sleeping for a couple of weeks",
      userID: "124",
      time: "12:34pm"),
  Message(
      text: "Wow awesome thanks!\nYour are the best ❤",
      userID: "123",
      time: "12:36pm"),
  Message(text: "Hello There", userID: "123", time: "12:30pm"),
  Message(
      text: "I wanted to ask you something..", userID: "123", time: "12:30pm"),
  Message(text: "whats up?", userID: "124", time: "12:31pm"),
  Message(
      text: "How do we make an awesome application like this?",
      userID: "123",
      time: "12:33pm"),
  Message(
      text:
          "It is easy, you just need to have an idea and forget about sleeping for a couple of weeks",
      userID: "124",
      time: "12:34pm"),
  Message(
      text: "Wow awesome thanks!\nYour are the best ❤",
      userID: "123",
      time: "12:36pm"),
];

// List<User>users=[

// ];

/* User(
  userID:,
  givenName:,
  familyName:,
  imageUrl:,
  institutions:[ userType:, ],
) */

/* for messages
UserInfo(
  userID:,
  givenName:,
  familyName:,
  imageUrl:,
) */

/*
CourseInfo(
  courseID:,
  courseName:,
  courseType:,
  courseImage:,
  description:,
  institutions:[],
)
*/

/*
Course(

  courseID:,
  courseName:,
  courseImage:,
  privacy:,
  courseType:,
  usersList:[],
  teacherList:[],
  owners:[],
 
  classes:[

    class:[
      classType:,
      ClassName:,
      classOrder:,
      videoSrc:,

    ]
  ]
  categories:[
 
    category:[ 
      categoryName:,
      categoryOrder:,
      items:[
        
        item:[
          itemType:,
          itemName:,
          itemUrl:,
          itemOrder:,
          isEnabled:,
        ],

        item:[ ### ],
        item:[ ### ],
      ],
    ],
    category[ ### ],
    category[ ### ],
  ]
)
*/

/* item:[
    itemType: folder,file,link,text,image,
    itemName:,
    itemUrl:,
  ], */
class Lecture {
  String lectureId;
  bool isPublic;
  bool isActive;
  String ownerId;
  List<String> lectureVideos;
  List<String> lectureDocuments;

  Lecture({
    this.lectureId,
    this.isPublic,
    this.isActive,
    this.ownerId,
    this.lectureVideos,
    this.lectureDocuments,
  });
}

class CourseInfo {
  String courseId;
  int isEnrolled;
  String courseImg;
  String courseName;
  String courseDescription;

  CourseInfo(
      {this.courseId,
      this.courseName,
      this.courseImg,
      this.courseDescription,
      this.isEnrolled});
}

class Course extends CourseInfo {
  bool isPublic;
  bool isActive;
  List<String> courseOwners;
  List<String> courseMembers;
  List<Lecture> courseLectures;
  String courseType;
  DateTime courseDateOfCreation;

  Course(String courseId, int isEnrolled, String courseImg, String courseName,
      String courseDescription,
      {this.isActive,
      this.isPublic,
      this.courseOwners,
      this.courseLectures,
      this.courseMembers,
      this.courseType,
      this.courseDateOfCreation})
      : super(
          courseId: courseId,
          isEnrolled: isEnrolled,
          courseName: courseName,
          courseDescription: courseDescription,
          courseImg: courseImg,
        );
}
