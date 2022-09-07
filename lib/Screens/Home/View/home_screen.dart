import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../Constants/constants.dart';
class Home extends StatefulWidget {
   Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body: Column(
        children: [
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Container(child: Row(children: [  Padding(padding: const EdgeInsets.all(8),
    child: Container(
      width: 50,height: 50,
      decoration: BoxDecoration(
          image:DecorationImage(image: AssetImage('images/profile.jpg'),fit: BoxFit.cover) ,
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(100)),



    ),
  ),
    Padding(padding: EdgeInsets.all(8),
      child:
      Container(width: 150,decoration:BoxDecoration() ,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Suleman Awan",style: TextStyle(color: primaryColor,fontWeight: FontWeight.w500),),
            Text("SF Solutions Rawalpindi hdhdhdhdhdhhdhdhdhdhhdhehhehehehehehehhehehehhehehehehhehehe",maxLines: 1, overflow: TextOverflow.ellipsis,),

          ],),
      ),
    ),],),),

  Padding(padding: EdgeInsets.all(10),
    child: Row(children: [Icon(Icons.logout), SizedBox(width: 10,),Text('Logout',style: TextStyle(color: primaryColor),)],)
  ),


],),
Container(width: 400,height: 200,
  decoration: BoxDecoration(image: DecorationImage(image: AssetImage('images/profile.jpg')
      ,fit: BoxFit.cover


  ),


      border: Border.all(color: primaryColor)),


),
          Padding(padding: EdgeInsets.all(40),
            child: CarouselSlider(
                items: [Text("Welcome back !",style: TextStyle(color: primaryColor,fontSize: 30),),Text("Suleman Awan",style: TextStyle(color: primaryColor,fontSize: 30),)],
                options: CarouselOptions(
                  height: 400,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                )
            ),
          )

      ],),
    );
  }
}
