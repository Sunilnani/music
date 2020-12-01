import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card/course.dart';
import 'package:flutter_card/rexent_Course_list.dart';
import 'package:flutter_card/sidebar_screen.dart';

import 'Explore_course_card_list.dart';
import 'home_Screen/Home_Screen_bar.dart';
import 'home_Screen/sidebar_content.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Animation<Offset> sidebarAnimation;
  Animation<double> fadeAnimation;
  AnimationController sidebarAnimationController;
  var sidebarHidden = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sidebarAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );
    sidebarAnimation = Tween<Offset>(
      begin: Offset(-1,0),
      end: Offset(0,0),
    ).animate(
      CurvedAnimation(
        parent: sidebarAnimationController,
        curve: Curves.easeInOut,
      ),
    );
    fadeAnimation= Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
        CurvedAnimation(
          parent: sidebarAnimationController,
          curve: Curves.easeInOut,
    ),);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    sidebarAnimationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Colors.black54,
        child: Stack(
          children:[ SafeArea(
            child: SingleChildScrollView(
              child: Column(
              children: [
                HomeScreenNavBar(triggerAnimation: (){
                  setState(() {
                    sidebarHidden= !sidebarHidden;
                  });
                  sidebarAnimationController.forward();
                },),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Recents", style:TextStyle(
                        color: Colors.pink,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),),
                      SizedBox(height: 5,),
                      Text("23 courses are running",style: TextStyle(
                        color: Colors.pink
                      ),)
                    ],
                  ),
                ),
               SizedBox(height: 20,),
               RecentCourseList(),
                Padding(padding: EdgeInsets.only(left:20, right: 20,top: 25,bottom: 15),
                  child: Column(
                    children: [
                      Text("Explore",style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),)
                    ],
                  ),

                ),
                ExploreCourseList(),

              ],
          ),
            ),
          ),
            IgnorePointer(
              ignoring: sidebarHidden,
              child: Stack(
                children: [
                  FadeTransition(
                    opacity: fadeAnimation,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          sidebarHidden= !sidebarHidden;
                        });
                        sidebarAnimationController.reverse();
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  ),
                  SlideTransition(
                  position: sidebarAnimation,
                  child: SafeArea(
                      child: SidebarScreen(),
                  bottom: false,),
                ),],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




