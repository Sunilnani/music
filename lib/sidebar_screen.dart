import 'package:flutter/material.dart';

import 'home_Screen/sidebar_content.dart';
class SidebarScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return RawMaterialButton(
      onPressed: (){

        Navigator.pop(context);
      },
      child: Container(


        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(34),

            )
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width*0.85,
        padding: EdgeInsets.symmetric(
          vertical: 35,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("img/img1.jpg"),
                  radius: 21,
                ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Samantha Chowdary",style: TextStyle(
                        fontSize: 12,
                        color: Colors.deepOrangeAccent,
                        fontWeight: FontWeight.w400
                    ),),
                    SizedBox(height: 4,),
                    Text(" beauty queen of india",style: TextStyle(
                      fontSize: 11,
                      color: Colors.pink,
                      fontWeight: FontWeight.w300,
                    ),)
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.08,),
            SidebarRow(
              item: sidebarItem[0],
            ),
            SizedBox(height: 32,),SidebarRow(
              item: sidebarItem[1],
            ),
            SizedBox(height: 32,),SidebarRow(
              item: sidebarItem[2],
            ),
            SizedBox(height: 32,),SidebarRow(
              item: sidebarItem[3],
            ),
            SizedBox(height: 32,),
            Spacer(),
            Row(
              children: [
                Image.asset("img/Logout.png",width: 17,),
                SizedBox(width: 12,),
                Text("Logout",style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.pink
                ),)

              ],
            )
          ],
        ),
      ),
    );
  }
}

class SidebarRow extends StatelessWidget {
  SidebarRow({@required this.item});
  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: 42,
            height: 42,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: item.background
            ),
            child: item.icon),
        SizedBox(width: 12,),
        Container(
          child: Text(item.title,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: Color(0xFF78D4A2)
          ),),
        ),
      ],
    );
  }
}
