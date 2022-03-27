import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  

  final String headLine, cousrtiltle,cousrtiltle2/*image*/;
  final int startcolor, endcolor;

const HorizontalList({Key? key, required this.headLine, required this.cousrtiltle,required this.cousrtiltle2,required this.startcolor,required this.endcolor,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Container(
        width: 246,
        height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(1,0),

            colors: [
                  Color(startcolor),Color(endcolor),
            ]
          )
        ),
        child: Stack(
        children: [
          Positioned(
            top: 15,
            left: 11,
            child: Container(
              height: 39,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                color: Color(0xFFAFA8EE)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Center(child: Text(headLine,style: TextStyle(color: Colors.white,fontSize: 16),)),
              ),
            )
        ),
          Positioned(
            top: 80,
            left: 14,
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[ 
                 Text(
                cousrtiltle,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
                  Text(
                cousrtiltle2,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),),
             ],
            )
        ),
    /*     Positioned(
            right: 0,
            bottom: 0,
             child: Image.asset(image,scale: 2,),
        ),*/
        ],
        ),
      ),
    );
  }
}
