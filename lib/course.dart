import 'package:flutter/cupertino.dart';

class Course{
  Course({
    this.coursetitle,
    this.courseSubtitle,
    this.background,
    this.illustration,
    this.logo,
});
  String coursetitle;
  String courseSubtitle;
  LinearGradient background;
  String illustration;
  String logo;
}
var recentCourses = [
  Course(
    coursetitle: "flutter for designers",
    courseSubtitle: "12 sections",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end:  Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: 'img/illustrartion.jpg',
    logo: "img/flutter.jpg"
  ),Course(
    coursetitle: "flutter for designers",
    courseSubtitle: "12 sections",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end:  Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: 'img/illustrartion.jpg',
    logo:"img/flutter.jpg"
  ),Course(
    coursetitle: "flutter for designers",
    courseSubtitle: "12 sections",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end:  Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: 'img/illustrartion.jpg',
    logo: "img/flutter.jpg"
  ),Course(
    coursetitle: "flutter for designers",
    courseSubtitle: "12 sections",
    background: LinearGradient(
      begin: Alignment.topLeft,
      end:  Alignment.bottomRight,
      colors: [
        Color(0xFF00AEFF),
        Color(0xFF0076FF),
      ],
    ),
    illustration: 'img/illustrartion.jpg',
    logo: "img/flutter.jpg",
  ),
];
// explore couses
