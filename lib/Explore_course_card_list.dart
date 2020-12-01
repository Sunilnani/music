import 'package:flutter/material.dart';

import 'course.dart';
class ExploreCourseCard extends StatelessWidget {
  ExploreCourseCard({@required this.course});
  final Course course;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41),
        child: Container(
          height: 120,
          width: 220,
          decoration: BoxDecoration(
              gradient: course.background
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 32),
            child: Row(
              children: [
                Expanded(
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(course.courseSubtitle,style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),),
                        SizedBox(height: 6,),
                        Text(course.coursetitle,style: TextStyle(
                          color: Colors.lightGreen,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),)
                      ],
                    )
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:[
                    Image.asset("img/illustration.jpg",fit: BoxFit.cover,height: 100,)
                  ],
                )
              ],
            ),
          ),

        ),
      ),
    );
  }
}
class ExploreCourseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount:recentCourses.length,
        itemBuilder: (context, index){
          return ExploreCourseCard(course: recentCourses[index]);
        },
      ),
    );
  }
}
