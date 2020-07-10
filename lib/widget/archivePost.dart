import 'package:aiphim/style/color.dart';
import 'package:flutter/material.dart';
import 'package:aiphim/view/video.dart';
Widget archivePlayer(BuildContext context){
  final double width = 130;
  return InkWell(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChewieDemo()),
      );
    },
    child: Container(
      width: width,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
            image: NetworkImage("https://pbs.twimg.com/media/D2h0b_uVYAAhjv0.jpg"),
            fit: BoxFit.cover
        ),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            child:Container(
              width: width,
              height: 140/1.9,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      stops: [0.2, 2],
                      colors: [Colors.transparent, Colors.black87]),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: agDarkOrange,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(3),topLeft: Radius.circular(3),topRight: Radius.circular(10))
              ),
              child: Text("HOT",style: TextStyle(fontSize: 10,color: agWhite,fontWeight:FontWeight.bold)),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            width: width,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text("1/1",style: TextStyle(color: agWhite,fontSize: 12,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[
                          Icon(Icons.star,color: agDarkOrange,size: 13,),
                          Text("4.5",style: TextStyle(color: agDarkOrange,fontSize: 11),)
                        ],
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding:EdgeInsets.all(1),
                              margin: EdgeInsets.only(right: 2),
                              decoration: BoxDecoration(
                                  color: agDarkOrange,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(width: 1,color: Colors.orangeAccent)
                              ),
                              child: Icon(Icons.visibility,color: agWhite,size: 9,),
                            ),
                            Container(
                              padding:EdgeInsets.only(top:2,bottom: 2,left: 5,right: 5),
                              child: Text("2.0k",style: TextStyle(color: agWhite,fontSize: 9),),
                              decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text("One Pice",overflow: TextOverflow.ellipsis,style: TextStyle(color: agWhite,fontWeight: FontWeight.bold,height: 1),),
                  SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    ),
  );
}