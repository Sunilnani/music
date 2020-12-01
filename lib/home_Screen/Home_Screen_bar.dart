import 'package:flutter/material.dart';
class HomeScreenNavBar extends StatelessWidget {
  HomeScreenNavBar({@required this.triggerAnimation});
  final Function triggerAnimation;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation  ,),
          SearchFieldWidget(),
          Icon(Icons.notifications,color: Colors.pink,),
          SizedBox(width: 16,),
          CircleAvatar(
            radius: 18,
            backgroundImage: AssetImage("img/illustration.jpg"),
          )
        ],
      ),
    );
  }
}
class SearchFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: 12,right: 16),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                    color: Colors.pink,
                    offset: Offset(0,12),
                    blurRadius: 16
                )
              ]
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              cursorColor: Colors.black54,
              decoration: InputDecoration(
                icon: Icon(Icons.search,color: Colors.black12,size: 20,),
                border: InputBorder.none,
                hintText: "search for sunil",
              ),
            ),
          ),
        ),
      ),);
  }
}


class SidebarButton extends StatelessWidget {
  SidebarButton({@required this.triggerAnimation});
  final Function triggerAnimation;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: triggerAnimation,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      constraints: BoxConstraints(
          maxWidth: 40,
          maxHeight: 40
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                  color: Colors.orange,
                  offset: Offset(0,4),
                  blurRadius: 16
              )
            ]
        ),
        child: Image.asset("img/sidebar.webp",color:Colors.orange,),
        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 14),
      ),
    );
  }
}



