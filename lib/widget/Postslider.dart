import 'package:aiphim/style/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Postslider(BuildContext context){
  final size = MediaQuery.of(context).size;
  final width = size.width;
  return Stack(
    children: <Widget>[
      ClipPath(
        child: Image.network("https://vtv1.mediacdn.vn/thumb_w/650/2020/4/20/one-piece-anime-hiatus-15873776419971960853722.jpg",fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
      ),
      Positioned(
        bottom: 0,
        child:Container(
          width: width,
          height: 160/1.9,
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
        bottom: 10,
        left: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("One Pice",style: TextStyle(color: agWhite,fontWeight: FontWeight.bold,fontSize: 25),),
            Text("Tập 11",style: TextStyle(color: agWhite),),
          ],
        ),
      ),
    ],
  );
}