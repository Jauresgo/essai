import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:youtube/model/video_model.dart';

Widget videoCard(VideoModel){
  return InkWell(
      onTap: (){},
      child:Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Column(
      children: [
        Stack(children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color:Colors.grey,
            ),child: Image.asset('assets/unnamed.jpg',fit: BoxFit.fill),
          ),
          Positioned(
              right: 20,
              bottom: 10,
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.black87,
            ),
            padding: EdgeInsets.symmetric(vertical: 2,horizontal: 8),
            child: Text(VideoModel.duree,style: TextStyle(color: Colors.white),),
          )),
        ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage('assets/channels4_profile.jpg')
                )
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(VideoModel.titre!,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text('${VideoModel.chaine}  -  ${VideoModel.vus}')
              ],
              ),
            ),
            IconButton(onPressed: (){}, icon:Icon(Icons.more_vert))
          ],
        ),
      ],
    ),
  ));
}