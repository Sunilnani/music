import 'package:flutter/material.dart';

import 'course.dart';
class RecentCourseList extends StatefulWidget {
  @override
  _RecentCourseListState createState() => _RecentCourseListState();
}

class _RecentCourseListState extends State<RecentCourseList> {
  List<Container> indicators =[];
  int currentPage = 0;
  Widget updateIndicators(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: recentCourses.map((course){
        var index = recentCourses.indexOf(course);
        return Container(
          width: 7,
          height: 7,
          margin: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: currentPage == index ? Color(0xFF0971FE) : Color(0xFFA6AEBD),
          ),
        );
      },).toList(),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 320,
          width: double.infinity,
          child: PageView.builder(
            itemBuilder:(context, index){
              return  Opacity(
                  opacity: currentPage == index ? 1.0 : 0.5,
                  child: RecentCourseCard(course: recentCourses[index],));
            },
            itemCount: recentCourses.length,
            controller: PageController(initialPage: 0,viewportFraction: 0.7),
            onPageChanged: (index){
              setState(() {
                currentPage=index;
              });
            },
          ),
        ),
        updateIndicators(),
      ],
    );
  }
}
class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({this.course});
  Course course;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.topRight,
        children:[
          Padding(
            padding:  EdgeInsets.only(top: 20),
            child: Container(
              width: 240,
              height: 240,
              decoration: BoxDecoration(
                  gradient: course.background,
                  borderRadius: BorderRadius.circular(41),
                  boxShadow: [
                    BoxShadow(
                        color: course.background.colors[0].withOpacity(0.3),offset: Offset(0,20)
                    ),
                    BoxShadow(
                        color: course.background.colors[1].withOpacity(0.3),offset: Offset(0,20)
                    )
                  ]
              ),

              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 32,
                      left: 32,
                      right: 32,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.courseSubtitle,
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white

                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          course.coursetitle,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight:FontWeight.w400,
                              color: Colors.white
                          ),
                        )

                      ],
                    ),
                  ),
                  Expanded(
                    child: Image.asset("img/illustration.jpg",
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: 42
            ),
            child: Container(
              child:Image.asset("img/flutter.jpg"),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(color: Colors.pink,offset: Offset(0, 4),blurRadius: 16)
                ],
              ),
              padding: EdgeInsets.all(12),
            ),
          ),

        ]
    );
  }
}