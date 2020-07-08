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
                    contentPadding: EdgeInsets.all(0),
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
                height: 50,
                width: 50,
                child: Card(
                  elevation: 0,
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
            )

          ],
        ),
      ),
    );
  }
  Widget topCarousel (){
    return Container(
        height: 200,
        width: MediaQuery.of(context).size.width-40,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Carousel(
            dotIncreasedColor: agDarkOrange,
            images: [
              NetworkImage('https://vtv1.mediacdn.vn/thumb_w/650/2020/4/20/one-piece-anime-hiatus-15873776419971960853722.jpg'),
              NetworkImage('https://weblinhtinh.xyz/wp-content/uploads/2019/07/one-piece-ss20.jpg'),
              NetworkImage('https://gamek.mediacdn.vn/zoom/700_438/2019/10/26/photo-1-1572060315190470419314.jpg'),
              NetworkImage('https://cdn.tgdd.vn/Files/2020/01/09/1230821/top-10-bo-phim-anime-hay-nhat-moi-thoi-dai-cua-nhat-ban-la-ai-cung-nen-xem-qua-7.jpg'),
            ],
          ),
        ),
    );
  }
}