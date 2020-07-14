import 'package:aiphim/widget/all_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:aiphim/style/all.dart';
class Homepage extends StatefulWidget{
  static const routeName = '/';
  _StateHomepage createState() => _StateHomepage();
}
class _StateHomepage extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: agDarkPurple,
      appBar: AppBar(
        backgroundColor: agDarkPurple,
        elevation: 0,
        title: Container(
          height: 40,
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>  SearchList()),
                    );
                  },
                  style: TextStyle(color: agWhite),
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Search name",
                    hintStyle: TextStyle(color: agWhite,fontStyle: FontStyle.italic),
                    fillColor:agRoyalPurple,
                    counterStyle: TextStyle(color: agWhite),
                    contentPadding: EdgeInsets.all(5),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: agRoyalPurple)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(color: agRoyalPurple),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(
                        Icons.search,
                        color: agWhite,
                      ), // icon is 48px widget.
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 40,
                width: 40,
                child: Card(
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network("http://3.bp.blogspot.com/_Gte9hIrnJjQ/TU9ikOKO6EI/AAAAAAAAAEE/_elByZ9PsnI/s1600/HAPPY.jpg",fit: BoxFit.cover,),
                ),

              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: topCarousel(),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                Text("Top phim",style: TextStyle(fontSize: 18,color: agWhite,fontWeight: FontWeight.bold),),
                Row(
                  children: <Widget>[
                    Text("xem tất cả",style: TextStyle(color: agWhite),),
                    Icon(Icons.arrow_right,color: agDarkOrange,)
                  ],
                )
              ],),
            ),
            Container(
              height: 170,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index)=>
                    archivePlayer(context),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Hành động",style: TextStyle(fontSize: 18,color: agWhite,fontWeight: FontWeight.bold),),
                  Row(
                    children: <Widget>[
                      Text("xem tất cả",style: TextStyle(color: agWhite),),
                      Icon(Icons.arrow_right,color: agDarkOrange,)
                    ],
                  )
                ],),
            ),
            Container(
              height: 170,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index)=>
                    archivePlayer(context),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Viễn tưởng",style: TextStyle(fontSize: 18,color: agWhite,fontWeight: FontWeight.bold),),
                  Row(
                    children: <Widget>[
                      Text("xem tất cả",style: TextStyle(color: agWhite),),
                      Icon(Icons.arrow_right,color: agDarkOrange,)
                    ],
                  )
                ],),
            ),
            Container(
              height: 170,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index)=>
                    archivePlayer(context),
              ),
            )

          ],
        ),
      ),
    );
  }
  Widget topCarousel (){
    return Container(
        height: 200,
        width: MediaQuery.of(context).size.width-20,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Carousel(
            dotIncreasedColor: agDarkOrange,
            images:listSlider(),
          ),
        ),
    );
  }
  List<Widget>  listSlider(){
   var listslider = new List<Widget>();
    for (var i = 0 ; i < 10 ; i++){
    listslider.add(Postslider(context));
  }
    return listslider;
  }
}